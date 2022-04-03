from ast import Str
import json
import boto3
from bs4 import BeautifulSoup
# import codecs
import quopri
import requests
from requests_html import HTMLSession 
import asyncio
from pyppeteer import launch
from urllib import parse


def lambda_handler(event, context):
    # TODO implement
    record = event["Records"][0]
    s3 = record["s3"]
    bucket = s3["bucket"]["name"]
    key = s3["object"]["key"]
    s3 = boto3.client('s3')
    # print(f"bucket: {bucket}")
    # print(f"key: {key}")
    response = s3.get_object(Bucket=bucket, Key=key)
    emailcontent = quopri.decodestring(response['Body'].read()).decode('utf-8', errors='ignore')

    # print(emailcontent)

     
    
    # print(emailcontent)

    house_ids = parseEmailContent(emailcontent)

    results = []
    for id in house_ids:
        print(id)
        full_report_page_url = f'https://www.flexmls.com/cgi-bin/mainmenu.cgi?cmd=url+reports/dispatcher/display_custom_report.html&wait_var=5&please_wait_override=Y&report_grid=&report_title=&fontsize=&spacing=&auto_print_report=&allow_linkbar=N&s_supp=Y&report=c,20100119161745206017000000,wysr&linkbar_toggle=&report_type=public&buscardselect=20100205205401647630000000&override_copyright=system&qcount=1&c1=x%27{id}%27&tech_id=x%2720160712160949869486000000%27&ma_tech_id=x%2720091028173201638455000000%27&pubwebflag=false&bas_link_tech_id=&publicversion=true&ups=undefined&fromshare=false&srch_rs=true'
        
        results.append(parse_full_report_page(requests.get(full_report_page_url).text))

    for result in results:
        print(result.get('address')+" -> "+result.get("list_price"))

    # print(links[0])
    # start_id=parse.parse_qs(parse.urlparse(links[0]).query)['start_id'][0]
    # print(start_id)

    # print(flexPage)

    # for link in links
    # session = HTMLSession()
    # r = session.get(links[0])
    # print(r.html.render())

    # print(flexPage)

    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }


def parse_full_report_page(full_report_page: str):
    result = {}
    soup:BeautifulSoup = BeautifulSoup(full_report_page, "html.parser")
    tables = soup.body.findChildren("table", recursive=False)
    
    # Get the listing price
    result['list_price'] = tables[0].table.findAll("td")[3].text[len("List Price:"):]

    location_table = tables[2]
    tmp = str(location_table).split("<div></div>")[0]

    address = tmp.split("<strong>Address:</strong>")[1].strip()
    result["address"] = address
    
    return result
    # address = location_table.table.
    # print(tables[2].findChildren("td"))

async def getFlexSite(url:str):
    final_page_url = "https://www.flexmls.com/cgi-bin/mainmenu.cgi?cmd=url+reports/dispatcher/display_custom_report.html&wait_var=5&please_wait_override=Y&report_grid=&report_title=&fontsize=&spacing=&auto_print_report=&allow_linkbar=N&s_supp=Y&report=c,20100119161745206017000000,wysr&linkbar_toggle=&report_type=public&buscardselect=20100205205401647630000000&override_copyright=system&qcount=1&c1=x%2720220331154904201212000000%27&tech_id=x%2720160712160949869486000000%27&ma_tech_id=x%2720091028173201638455000000%27&pubwebflag=false&bas_link_tech_id=&publicversion=true&ups=undefined&fromshare=false&srch_rs=true"
    flexPage = BeautifulSoup(requests.get(final_page_url).text, "html.parser")
    # print(flexPage)    
    # browser = await launch(headless=True, args=['--no-sandbox'])
    # page = await browser.newPage()
    # await page.goto(url)
    # await page.waitForNavigation()
    # frame = page.mainFrame.childFrames[0]
    # print(await frame.evaluate('document.documentElement.outerHTML', force_expr=True))
    # content = await page.evaluate('document.documentElement.outerHTML', force_expr=True)
    # print(content)
    # await page.screenshot({'path': 'example.png'})
    # await browser.close()



def parseEmailContent(emailContent:str):
    soup = BeautifulSoup(emailContent, 'html.parser')
    # print(len(soup.find_all("tr")))
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