import glob
import re
import sys
import requests
from bs4 import BeautifulSoup

# Gather all base stats files or specific ones via CLI
if len(sys.argv) > 1:
    filenames = sys.argv[1:]
else:
    filenames = glob.glob('data/pokemon/base_stats/*/*.asm')

# Set of valid TM/HM/Tutor move constants
valid_moves = set()
with open('constants/item_constants.asm') as f:
    for line in f:
        m = re.match(r'\s*add_(?:tm|hm|mt)\s+([A-Z0-9_]+)', line)
        if m:
            valid_moves.add(m.group(1))

# Utility to normalise move names
def normalise(name: str) -> str:
    name = name.replace(' ', '_').replace('-', '_').upper()
    if name == 'PSYCHIC':
        return 'PSYCHIC_M'
    if name in valid_moves:
        return name
    collapsed = name.replace('_', '')
    if collapsed in valid_moves:
        return collapsed
    return name

# Fetch TM list for a given game label on PokemonDB

def fetch_tm_moves(slug: str, gen: int, game_label: str):
    url = f'https://pokemondb.net/pokedex/{slug}/moves/{gen}'
    html = requests.get(url).text
    soup = BeautifulSoup(html, 'html.parser')
    moves = []
    for h3 in soup.find_all('h3'):
        if 'Moves learnt by TM' in h3.text or 'Moves learnt by HM' in h3.text:
            p = h3.find_next_sibling('p')
            if p and game_label in p.text:
                container = p.find_next_sibling('div')
                if container:
                    table = container.find('table')
                    if table:
                        moves.extend(a.text for a in table.find_all('a', {'class': 'ent-name'}))
    return moves

def fetch_tr_moves(slug: str):
    url = f'https://pokemondb.net/pokedex/{slug}/moves/8'
    html = requests.get(url).text
    soup = BeautifulSoup(html, 'html.parser')
    moves = []
    for h3 in soup.find_all('h3'):
        if 'Moves learnt by TR' in h3.text:
            p = h3.find_next_sibling('p')
            if p and 'Sword/Shield' in p.text:
                container = p.find_next_sibling('div')
                if container:
                    table = container.find('table')
                    if table:
                        moves.extend(a.text for a in table.find_all('a', {'class': 'ent-name'}))
    return moves

def gather_tmhm_moves(slug: str):
    moves = set()
    # Gen 7 appearances
    moves.update(fetch_tm_moves(slug, 7, 'Sun & Moon'))
    moves.update(fetch_tm_moves(slug, 7, 'Ultra Sun & Ultra Moon'))
    # Gen 8 appearances
    moves.update(fetch_tm_moves(slug, 8, 'Sword & Shield'))
    moves.update(fetch_tm_moves(slug, 8, 'Brilliant Diamond & Shining Pearl'))
    # Check HGSS for Whirlpool and Rock Climb
    hgss_moves = fetch_tm_moves(slug, 4, 'HeartGold &')
    if 'Whirlpool' in hgss_moves:
        moves.add('Whirlpool')
    if 'Rock Climb' in hgss_moves:
        moves.add('Rock Climb')
    # Check ORAS for Dive
    oras_moves = fetch_tm_moves(slug, 6, 'Omega Ruby')
    if 'Dive' in oras_moves:
        moves.add('Dive')
    return moves

for file in filenames:
    # slug for PokemonDB URLs
    name = file.split('/')[-1].replace('.asm', '')
    slug = name.replace('_d', 'd').replace('__', '-').replace('_', '-').replace('farfetchd', 'farfetch-d').replace('mr.mime', 'mr-mime')

    print(f'Processing {name}')

    tm_moves = gather_tmhm_moves(slug)
    swsh_tr = fetch_tr_moves(slug)
    tm_moves.update(swsh_tr)

    moves = []
    for m in tm_moves:
        norm = normalise(m)
        if norm in valid_moves and norm not in moves:
            moves.append(norm)
    move_string = ', '.join(moves)

    with open(file, encoding='utf-8') as fr:
        lines = fr.readlines()
    for idx, line in enumerate(lines):
        if 'tmhm' in line:
            prefix = '\ttmhm'
            if move_string:
                prefix += ' ' + move_string
            lines[idx] = prefix + '\n'
            break
    with open(file, 'w', encoding='utf-8') as fw:
        fw.writelines(lines)
