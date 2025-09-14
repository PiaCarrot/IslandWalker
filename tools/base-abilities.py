import requests
from bs4 import BeautifulSoup
import glob
import re

filenames = glob.glob("../data/pokemon/base_stats/*/*.asm")
base_url = "https://pokemondb.net/pokedex/"

for filename in filenames:
    pokemon = filename.split("/")[4]
    pokemon = pokemon.replace(".asm", "")
    mod_url = base_url + pokemon + "/"
    
    response = requests.get(mod_url)
    request = BeautifulSoup(response.text, "html.parser")
    
    # We will always find this first ability
    abilities = str(request.findAll("span", {"class": "text-muted"}))
    ability1 = abilities.replace("[<span class=\"text-muted\">1. <a href=\"/ability/", "").replace("\"", "").replace("-","_").split(" ")[0].upper()
    
    # A second ability isn't always guaranteed...
    try:
        ability2 = abilities.split("2. ")[1].replace("<a href=\"/ability/", "").replace("\"", "").replace("-","_").split(" ")[0].upper()
    except:
        ability2 = ability1

    with open(filename, 'r', encoding='utf8') as file:
        lines = file.readlines()

    # determine base exp from the stats file
    base_exp = 0
    for line in lines:
        m = re.match(r'\s*db\s+(\d+)\s*;\s*base exp', line)
        if m:
            base_exp = int(m.group(1))
            break

    def exp_to_item(exp):
        if exp < 90:
            return 'EXP_CANDY_XS'
        if exp < 150:
            return 'EXP_CANDY_S'
        if exp < 210:
            return 'EXP_CANDY_M'
        if exp < 300:
            return 'EXP_CANDY_L'
        return 'EXP_CANDY_XL'

    drop_item = exp_to_item(base_exp)

    with open(filename, 'w', encoding='utf8') as file:
        for line in lines:
            if line == '\tdw NULL, NULL ; unused (beta front/back pics)\n':
                file.write("\tdb " + ability1 + ", " + ability2 + " ; wBaseAbility1, wBaseAbility2\n")
                file.write(f"\tdw {drop_item} ; drop item\n")
            else:
                file.write(line)
