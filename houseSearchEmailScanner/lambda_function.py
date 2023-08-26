from ast import Str
import json
import boto3
from bs4 import BeautifulSoup
import quopri
import requests
from urllib import parse
import os

def lambda_handler(event, context):
    print(event)
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

    results = []
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

def parse_full_report_page(full_report_page: str):
    result = {}
    soup:BeautifulSoup = BeautifulSoup(full_report_page, "html.parser")
    tables = soup.body.findChildren("table", recursive=False)

    # Header
    result["msl#"] = safe_parse(lambda :tables[0].table.findAll("td")[0].text[len("MLS#:"):],"msl#")

    result["dwelling_type"] = safe_parse(lambda :tables[0].table.findAll("td")[1].text[len("Dwelling Type:"):], "dwelling_type")

    result["status"] = safe_parse(lambda :tables[0].table.findAll("td")[2].text[len("Status:"):], "status")

    result['list_price'] = safe_parse(lambda :tables[0].table.findAll("td")[3].text[len("List Price:"):], "list_price")

    if "Multi-Family" in result["dwelling_type"]:
        return None
    # General Features 1
    result["combined_sqft"] = safe_parse(lambda :tables[1].table.findAll("td")[1].table.findAll("td")[1].text, "combined_sqft")

    result["bedrooms"] = safe_parse(lambda :tables[1].table.findAll("td")[1].table.findAll("td")[9].text, "bedrooms")

    result["lot_acres"] = safe_parse(lambda :tables[1].table.findAll("td")[1].table.findAll("td")[13].text, "lot_acres")

    result["year_built"] = safe_parse(lambda :tables[1].table.findAll("td")[1].table.findAll("td")[15].text, "year_built")

    result["stories"] = safe_parse(lambda :tables[1].table.findAll("td")[1].table.findAll("td")[17].text, "stories")

    # Address
    result["address"] = safe_parse(lambda :tables[2].table.findAll("td")[0].text.split("Address:")[1].split("County:")[0], "address")

    # General Features 2
    result["#_garage"] = safe_parse(lambda :tables[3].table.findAll("td")[0].table.findAll("td")[1].text, "#_garage")

    result["#_carport"] = safe_parse(lambda :tables[3].table.findAll("td")[0].table.findAll("td")[3].text, "#_carport")

    result["#_covered_parking"] = safe_parse(lambda :tables[3].table.findAll("td")[0].table.findAll("td")[5].text, "#_covered_parking")

    result["lot_sq_ft"] = safe_parse(lambda :tables[3].table.findAll("td")[0].table.findAll("td")[15].text, "lot_sq_ft")

    # The 2nd coloum is the 20th...not the best way to find this data but it's fiiiine
    result["construction"] = safe_parse(lambda :tables[3].table.findAll("td")[20].table.findAll("td")[1].text, "construction")

    result["style"] = safe_parse(lambda :tables[3].table.findAll("td")[20].table.findAll("td")[3].text, "style")

    result["basement"] = safe_parse(lambda :tables[3].table.findAll("td")[20].table.findAll("td")[7].text, "basement")

    result["list_$_per_sqft"] = safe_parse(lambda :tables[3].table.findAll("td")[20].table.findAll("td")[13].text, "list_$_per_sqft")
    
    result["lot_size_$_per_sqft"] = safe_parse(lambda :tables[3].table.findAll("td")[20].table.findAll("td")[15].text, "lot_size_$_per_sqft")

    # Same as above...not great, but it works
    result["municipality_zoning"] = safe_parse(lambda :tables[3].table.findAll("td")[42].table.findAll("td")[1].text, "municipality_zoning")

    # Property Description
    result["description"] = safe_parse(lambda :tables[4].table.findAll("td")[1].text, "description")

    # Subdivision, HOA & Deed Restrictions
    result["hoa"] = safe_parse(lambda :tables[5].table.findAll("td")[1].table.findAll("td")[3].text, "hoa")

    result["hoa_fees_per_month"] = safe_parse(lambda :tables[5].table.findAll("td")[7].table.findAll("td")[1].text, "hoa_fees_per_month")

    # Interior Features
    result["living_areas"] = safe_parse(lambda :tables[8].table.findAll("td")[1].table.findAll('td')[1].text, "living_areas")

    result["main_cooling"] = safe_parse(lambda :tables[8].table.findAll("td")[24].table.findAll("td")[5].text, "main_cooling")

    result["electric"] = safe_parse(lambda :tables[8].table.findAll("td")[24].table.findAll("td")[23].text, "electric")

    # Exterior Features
    result["roof"] = safe_parse(lambda :tables[9].table.findAll("td")[1].table.findAll("td")[3].text, "roof")

    result["water"] = safe_parse(lambda :tables[9].table.findAll("td")[20].table.findAll("td")[11].text, "water")

    # for key in result:
    #     if "description" not in key:
    #         print(f"{key}:\t\t{result[key].strip()}")    
    return {k:safeCovert(v) for k, v in result.items()}


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