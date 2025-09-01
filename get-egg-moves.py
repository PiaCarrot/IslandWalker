import glob
import re
import requests
from bs4 import BeautifulSoup

# Normalize move names to assembly format

def normalise(name: str) -> str:
    name = re.sub(r'[ -]', '_', name).upper()
    if len(name) > 12:
        name = name.replace('_', '')
    name = name.replace('PSYCHIC', 'PSYCHIC_M')
    name = name.replace('CONVERSION_2', 'CONVERSION2')
    return name

# Fetch egg moves for a given Pokemon slug

def fetch_egg_moves(slug: str) -> list[str]:
    url = f'https://pokemondb.net/pokedex/{slug}/moves/4'
    soup = BeautifulSoup(requests.get(url).text, 'html.parser')
    # Try to find the Platinum table explicitly
    for h3 in soup.find_all('h3'):
        if 'Egg moves' in h3.text:
            p = h3.find_next_sibling('p')
            if p and 'Platinum' in p.text:
                table = h3.find_next('table')
                if table:
                    return [a.text for a in table.find_all('a', {'class': 'ent-name'})]
    # Fallback: first egg move table on the page
    h3 = soup.find('h3', string=lambda s: s and 'Egg moves' in s)
    if h3:
        table = h3.find_next('table')
        if table:
            return [a.text for a in table.find_all('a', {'class': 'ent-name'})]
    return []

filenames = [f for f in glob.glob('data/pokemon/egg_moves_*.asm') if 'form' not in f]

for filename in filenames:
    with open(filename, 'r', encoding='utf-8') as fr:
        egg_lists = fr.read().split('\n\n')

    file_string = egg_lists[0] + '\n\n' + egg_lists[1]

    poke_list = []
    for line in file_string.split('\n')[3:-1]:
        parts = line.split()
        if len(parts) >= 2 and 'NoEggMoves' not in parts[1]:
            poke_list.append(parts[1].split('EggMoves')[0])

    for name in poke_list:
        url_name = name.lower()
        url_name = url_name.replace('nidoranf', 'nidoran-f')
        url_name = url_name.replace('nidoranm', 'nidoran-m')
        url_name = url_name.replace('mrmime', 'mr-mime')

        moves = fetch_egg_moves(url_name)
        moves = [m for m in moves if m not in ['Helping Hand', 'Me First']]

        mon_moves = [name + 'EggMoves:']
        for move in moves:
            mon_moves.append('\tdw ' + normalise(move))
        mon_moves.append('\tdw -1 ; end')
        file_string += '\n\n' + '\n'.join(mon_moves)

    file_lines = file_string.split('\n')
    section_name = file_lines[0].split('"')[1].replace(' ', '')
    del file_lines[-1]
    file_lines.append('No' + section_name + ':')
    file_lines.append('\tdw -1 ; end\n\nENDSECTION\n')

    with open(filename, 'w', encoding='utf-8') as fw:
        fw.write('\n'.join(file_lines))
