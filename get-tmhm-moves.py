import glob
import re
import sys
import requests

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

# Gather TM/HM/TR moves from PokeAPI across supported games

ALLOWED_VG = {
    'sun-moon',
    'ultra-sun-ultra-moon',
    'sword-shield',
    'brilliant-diamond-shining-pearl',
    'scarlet-violet',
    'heartgold-soul-silver',
    'omega-ruby-alpha-sapphire',
}

def gather_tmhm_moves(slug: str):
    url = f'https://pokeapi.co/api/v2/pokemon/{slug.replace("/", "-")}'
    data = requests.get(url).json()
    moves = set()
    for m in data['moves']:
        for detail in m['version_group_details']:
            if detail['move_learn_method']['name'] == 'machine' and detail['version_group']['name'] in ALLOWED_VG:
                moves.add(m['move']['name'])
    return moves

for file in filenames:
    # slug for PokemonDB URLs
    name = file.split('/')[-1].replace('.asm', '')
    slug = name.replace('_', '-').replace('farfetchd', 'farfetch-d').replace('mr.mime', 'mr-mime')

    print(f'Processing {name}')

    tm_moves = gather_tmhm_moves(slug)

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
