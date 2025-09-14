import os
import re
from glob import glob

# Load base exp values from table
base_exp = {}
with open('data/pokemon/base_exp.asm', encoding='utf8') as f:
    for line in f:
        m = re.match(r'\s*dw\s+(\d+)\s*;\s*([A-Z0-9_]+)', line)
        if m:
            exp = int(m.group(1))
            name = m.group(2)
            base_exp[name] = exp


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

files = glob('data/pokemon/base_stats/**/*.asm', recursive=True)

for path in files:
    species = os.path.splitext(os.path.basename(path))[0].upper().replace('-', '_')
    exp = base_exp.get(species)
    with open(path, encoding='utf8') as f:
        lines = f.readlines()
    if exp is None:
        # fall back to the base exp stored in the stats file
        for line in lines:
            m = re.match(r'\s*db\s+(\d+)\s*;\s*base exp', line)
            if m:
                exp = int(m.group(1))
                break
    if exp is None:
        print('No base exp for', species)
        continue
    item = exp_to_item(exp)
    for i, line in enumerate(lines):
        if '; drop item' in line:
            indent = re.match(r'(\s*)', line).group(1)
            lines[i] = f"{indent}dw {item} ; drop item\n"
            break
    with open(path, 'w', encoding='utf8') as f:
        f.writelines(lines)
