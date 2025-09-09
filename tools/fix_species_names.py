#!/usr/bin/env python3
import re
import requests
from pathlib import Path

# Directories containing dex entry ASM files to update
DEX_DIRS = [
    Path('data/pokemon/dex_entries/hoenn'),
    Path('data/pokemon/dex_entries/sinnoh'),
]

# Special slug mappings for PokéAPI
SLUG_SPECIAL = {
    'farfetch_d': 'farfetchd',
    'ho_oh': 'ho-oh',
    'porygon_z': 'porygon-z',
    'mime_jr': 'mime-jr',
}

def format_genus(genus: str) -> str:
    genus = genus.replace('Pokémon', '').replace('é', 'e').strip().upper()
    if len(genus) <= 11:
        return genus
    no_space = genus.replace(' ', '')
    if len(no_space) <= 11:
        return no_space
    return no_space[:11]

for dex_dir in DEX_DIRS:
    for asm_path in dex_dir.glob('*.asm'):
        base = asm_path.stem
        slug = SLUG_SPECIAL.get(base, base).replace('__', '-').replace('_', '-')
        try:
            species_data = requests.get(
                f'https://pokeapi.co/api/v2/pokemon-species/{slug}', timeout=10
            ).json()
            genus = next(g['genus'] for g in species_data['genera'] if g['language']['name'] == 'en')
        except Exception as e:
            print(f'Failed to fetch {base}: {e}')
            continue
        formatted = format_genus(genus)
        lines = asm_path.read_text().splitlines()
        if not lines:
            continue
        lines[0] = re.sub(r'"[^"]+@"', f'"{formatted}@"', lines[0])
        asm_path.write_text('\n'.join(lines) + '\n')
