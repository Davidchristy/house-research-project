from bs4 import BeautifulSoup
from urllib import parse

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
 
    return {k:safeCovert(v) for k, v in result.items()}


def parseEmailContent(emailContent:str):
    soup = BeautifulSoup(emailContent, 'html.parser')
    rows = soup.find_all("tr")
    house_ids = []
    for row in rows:
        id = parse.parse_qs(parse.urlparse(row.a['href']).query)['start_id'][0]
        house_ids.append(id)
    return house_ids