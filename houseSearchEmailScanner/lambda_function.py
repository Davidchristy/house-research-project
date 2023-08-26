import json
import boto3
from bs4 import BeautifulSoup
import quopri
import requests
from urllib import parse

from email_parser import parse_full_report_page

def lambda_handler(event, context):
    record_s3 = event["Records"][0]["s3"]
    incoming_emails_bucket = record_s3["bucket"]["name"]
    key = record_s3["object"]["key"]
    s3 = boto3.client('s3')
    response = s3.get_object(Bucket=incoming_emails_bucket, Key=key)
    emailcontent = quopri.decodestring(response['Body'].read()).decode('utf-8', errors='ignore')
    # This should be passed in by a setting, but this is fine for now
    full_report_cache_bucket = "house-full-report-cache"
    dynamo_house_data_table = "house-data"


    house_ids = parseEmailContent(emailcontent)

    for id in house_ids:
        print(id)
        email_cache_key = f'{id}-full-report.html'
        try:
            response = s3.get_object(Bucket=full_report_cache_bucket, Key=email_cache_key)
        except s3.exceptions.NoSuchKey as e:
            response = None
        
        
        full_report_page_url = f'https://www.flexmls.com/cgi-bin/mainmenu.cgi?cmd=url+reports/dispatcher/display_custom_report.html&wait_var=5&please_wait_override=Y&report_grid=&report_title=&fontsize=&spacing=&auto_print_report=&allow_linkbar=N&s_supp=Y&report=c,20100119161745206017000000,wysr&linkbar_toggle=&report_type=public&buscardselect=20100205205401647630000000&override_copyright=system&qcount=1&c1=x%27{id}%27&tech_id=x%2720160712160949869486000000%27&ma_tech_id=x%2720091028173201638455000000%27&pubwebflag=false&bas_link_tech_id=&publicversion=true&ups=undefined&fromshare=false&srch_rs=true'
        if response:
            full_house_report = response['Body'].read()
        else:
            full_house_report = requests.get(full_report_page_url).text

            s3.put_object(Body=full_house_report,
                            Bucket=full_report_cache_bucket, 
                            Key=email_cache_key)

        print(full_report_page_url)
        
        house_result = parse_full_report_page(full_house_report)
        if house_result:
            save_house_to_table(house_result, dynamo_house_data_table)

            
         



    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }


def save_house_to_table(house_data: dict, table_name:str):
    # TODO: I'll want to check for types and assign different types, but all strings is fine now
    parameters = {}
    for key in house_data:
        parameters[key]={"S":house_data[key]}
    boto3.client('dynamodb').put_item(
        TableName=table_name,
        Item=parameters
    )

def safe_parse(parse_function, parameter: str):
    try:
        return parse_function()
    except Exception as e:
        print(f"Trying to run {parameter} has failed with the following error\n{e}")
        return None




def safeCovert(v):
    # TODO: I'll want to convert numbers and floats here, but that can come later
    if not v:
        return ""
    return v.strip()

def parseEmailContent(emailContent:str):
    soup = BeautifulSoup(emailContent, 'html.parser')
    rows = soup.find_all("tr")
    house_ids = []
    for row in rows:
        id = parse.parse_qs(parse.urlparse(row.a['href']).query)['start_id'][0]
        house_ids.append(id)
    return house_ids

if __name__ == '__main__':
    # with open('tests/test_email_body.html') as f:
    #     parseEmailContent("\n".join(f.readlines()))
    
    # with open('tests/test_full_report_page.html') as f:
    #     parse_full_report_page("\n".join(f.readlines()))

    lambda_handler(json.load(open('tests/test_event.json')), None)



    # asyncio.get_event_loop().run_until_complete(
    #     getFlexSite("https://www.flexmls.com/notifications.html?agent_id=20160712160949869486000000&newsfeed_id=20210408182626386503478150&contact_id=20190206165051466854000000&notification_id=20220403101044115854000000&start_id=20220331154904201212000000&eid=ab495c603368778f2c29abc54abddc00"))