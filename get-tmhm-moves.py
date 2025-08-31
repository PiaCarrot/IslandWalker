import glob
import re
import requests
from bs4 import BeautifulSoup

# Gather all base stats files
filenames = glob.glob('data/pokemon/base_stats/*/*.asm')

# Utility to normalise move names
def normalise(name: str) -> str:
    name = name.replace(' ', '_').replace('-', '_').upper()
    if len(name) > 12:
        name = name.replace('_', '')
    if name == 'PSYCHIC':
        return 'PSYCHIC_M'
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

for file in filenames:
    # slug for PokemonDB URLs
    name = file.split('/')[-1].replace('.asm', '')
    slug = name.replace('_d', 'd').replace('__', '-').replace('_', '-').replace('farfetchd', 'farfetch-d').replace('mr.mime', 'mr-mime')

    print(f'Processing {name}')

    bdsp_moves = fetch_tm_moves(slug, 8, 'Brilliant Diamond')
    # Check HGSS for Whirlpool and Rock Climb
    hgss_moves = fetch_tm_moves(slug, 4, 'HeartGold &')
    if 'Whirlpool' in hgss_moves and 'Whirlpool' not in bdsp_moves:
        bdsp_moves.append('Whirlpool')
    if 'Rock Climb' in hgss_moves and 'Rock Climb' not in bdsp_moves:
        bdsp_moves.append('Rock Climb')
    # Check ORAS for Dive
    oras_moves = fetch_tm_moves(slug, 6, 'Omega Ruby')
    if 'Dive' in oras_moves and 'Dive' not in bdsp_moves:
        bdsp_moves.append('Dive')

    moves = [normalise(m) for m in bdsp_moves]
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
