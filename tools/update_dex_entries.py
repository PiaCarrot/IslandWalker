import os, re, sys, textwrap, requests
from pathlib import Path

DOC_FILE = Path('docs/dex.txt')
DEX_ENTRIES_ASM = Path('data/pokemon/dex_entries.asm')
BODY_DATA = Path('data/pokemon/body_data.asm')

# read docs/dex.txt into dictionary of sanitized name -> list of lines
entries = {}
with DOC_FILE.open(encoding='utf-8') as f:
    lines = [line.rstrip() for line in f]

i = 0
while i < len(lines):
    if not lines[i].strip():
        i += 1
        continue
    name = lines[i].strip()
    i += 1
    entry_lines = []
    while i < len(lines) and lines[i].strip():
        entry_lines.append(lines[i])
        i += 1
    name_nopar = name.replace('(', '').replace(')', '')
    sanitized = ''.join(c.lower() if c.isalnum() else '_' for c in name_nopar).strip('_')
    special_map = {
        'mr__rime': 'mr_rime',
        'sirfetch_d': 'sirfetchd',
    }
    sanitized = special_map.get(sanitized, sanitized)
    sanitized = re.sub(r'_(roaming_form|chest_form|two_segment|three_segment|midday|midnight|dusk)$', '', sanitized)
    sanitized = sanitized.strip('_')
    lname = name.lower()
    if sanitized == 'gimmighoul':
        if 'chest' in lname:
            entries[sanitized] = entry_lines
        elif sanitized not in entries:
            entries[sanitized] = entry_lines
    elif sanitized == 'dudunsparce':
        if 'two' in lname or sanitized not in entries:
            entries[sanitized] = entry_lines
    else:
        entries.setdefault(sanitized, entry_lines)
    i += 1

# parse body_data.asm to find zero height/weight entries
zero_body = set()
body_pattern = re.compile(r'dw\s+0,\s+0\s+;\s+(\w+)')
with BODY_DATA.open() as f:
    for line in f:
        m = body_pattern.search(line)
        if m:
            zero_body.add(m.group(1).lower())

# mapping from dex_entries.asm
mapping = {}
pattern = re.compile(r'PokedexEntry::\s+INCLUDE "([^"]+)"')
with DEX_ENTRIES_ASM.open() as f:
    for line in f:
        m = pattern.search(line)
        if m:
            path = m.group(1)
            base = Path(path).stem
            mapping[base] = Path(path)

slug_special = {
    'farfetch_d': 'farfetchd',
    'ho_oh': 'ho-oh',
    'porygon_z': 'porygon-z',
}

body_updates = {}
missing = []

for base, path in mapping.items():
    if 'forms' in str(path):
        continue
    with path.open() as f:
        first_line = f.readline().rstrip('\n')
    need_api = False
    if '"???@"' in first_line:
        need_api = True
    if base in zero_body:
        need_api = True
    if base not in entries:
        need_api = True

    if need_api:
        slug = slug_special.get(base, base).replace('__', '-').replace('_', '-')
        try:
            species_data = requests.get(f'https://pokeapi.co/api/v2/pokemon-species/{slug}', timeout=10).json()
            pokemon_url = next(v['pokemon']['url'] for v in species_data['varieties'] if v['is_default'])
            pokemon_data = requests.get(pokemon_url, timeout=10).json()
        except Exception as e:
            sys.stderr.write(f'Failed to fetch {base}: {e}\n')
            missing.append(base)
            continue
        # species name
        genus = next(g['genus'] for g in species_data['genera'] if g['language']['name'] == 'en')
        genus = genus.replace('Pokémon', '').replace('é', 'e').strip().upper()
        species_line = re.sub(r'db\s+".*@"\s+;\s+species name',
                               f'db "{genus[:11]}@" ; species name', first_line)
        first_line = species_line
        # height/weight
        h_dm = pokemon_data['height']
        w_hg = pokemon_data['weight']
        total_inches = h_dm * 3.93701
        feet = int(total_inches // 12)
        inches = int(round(total_inches - feet * 12))
        if inches == 12:
            feet += 1
            inches = 0
        height_val = feet * 100 + inches
        pounds_tenths = round(w_hg * 0.220462 * 10)
        weight_val = int(round(pounds_tenths / 10) * 10)
        body_updates[base.upper()] = (height_val, weight_val)
        # description if missing
        if base not in entries:
            flavor = None
            for fte in species_data['flavor_text_entries']:
                if fte['language']['name'] == 'en':
                    flavor = fte['flavor_text'].replace('\n', ' ').replace('\f', ' ')
                    break
            if not flavor:
                flavor = ''
            flavor = flavor.replace('é', 'e')
            lines = textwrap.wrap(flavor, width=18)[:6]
            if not lines:
                lines = ['...']
            entries[base] = lines
    entry = entries.get(base)
    if not entry:
        missing.append(base)
        continue
    formatted = []
    n = len(entry)
    if n <= 3:
        if n >= 1:
            formatted.append(f"\tdb   \"{entry[0]}\"")
        for line in entry[1:-1]:
            formatted.append(f"\tnext \"{line}\"")
        if n >= 2:
            formatted.append(f"\tnext \"{entry[-1]}@\"")
        else:
            formatted[-1] = formatted[-1][:-1] + '@"'
    else:
        first = entry[:3]
        second = entry[3:]
        formatted.append(f"\tdb   \"{first[0]}\"")
        for line in first[1:]:
            formatted.append(f"\tnext \"{line}\"")
        formatted.append("")
        if len(second) == 1:
            formatted.append(f"\tpage \"{second[0]}@\"")
        else:
            formatted.append(f"\tpage \"{second[0]}\"")
            for line in second[1:-1]:
                formatted.append(f"\tnext \"{line}\"")
            formatted.append(f"\tnext \"{second[-1]}@\"")
    new_lines = [first_line, ""] + formatted
    new_content = "\n".join(new_lines) + "\n"
    with path.open('w') as f:
        f.write(new_content)

if body_updates:
    body_lines = BODY_DATA.read_text().splitlines()
    for idx, line in enumerate(body_lines):
        m = re.match(r'\s*dw\s+\d+,\s+\d+\s+;\s+(\w+)', line)
        if m:
            name = m.group(1)
            upd = body_updates.get(name)
            if upd:
                body_lines[idx] = re.sub(r'dw\s+\d+,\s+\d+', f'dw {upd[0]}, {upd[1]}', line)
    BODY_DATA.write_text("\n".join(body_lines) + "\n")

if missing:
    sys.stderr.write('Missing entries for: ' + ', '.join(sorted(missing)) + '\n')
