import re
from pathlib import Path

def create_xws_name(name, ship):
    name_clean = re.sub(r'[^a-z0-9]', '', name.lower().split(' (')[0])
    suffix = ''
    if '(' in name:
        match = re.search(r'\(([^)]+)\)', name, re.IGNORECASE)
        if match:
            tag = match.group(1).strip().lower()
            if tag == 'boy':
                suffix = '-battleofyavin'
            elif tag == 'boe':
                suffix = '-battleoverendor'
            elif tag == 'ssp':
                suffix = '-swz106'
            elif tag == 'eod':
                suffix = '-evacuationofdqar'
            elif tag == 'aad':
                suffix = '-armedanddangerous'
            else:
                ship_clean = re.sub(r'[^a-z0-9]', '', ship.lower())
                suffix = f'-{ship_clean}'
    return f"{name_clean}{suffix}"

def insert_xws_name(pilot_block):
    name_match = re.search(r'name:\s*"([^"]+)"', pilot_block)
    ship_match = re.search(r'ship:\s*"([^"]+)"', pilot_block)
    id_match = re.search(r'(id:\s*\d+\s*\n)', pilot_block)

    if not (name_match and ship_match and id_match):
        return pilot_block  # Leave unchanged if any piece is missing

    name = name_match.group(1)
    ship = ship_match.group(1)
    xws_line = f'    xws_name: "{create_xws_name(name, ship)}"\n'

    # Insert xws_name after the id line
    id_line = id_match.group(1)
    return pilot_block.replace(id_line, id_line + xws_line)

def process_file(input_file, output_file):
    content = Path(input_file).read_text(encoding="utf-8")

    # Find the pilotsById block
    start = content.find('pilotsById:')
    if start == -1:
        print("No pilotsById section found.")
        return

    array_start = content.find('[', start)
    if array_start == -1:
        print("No array found after pilotsById.")
        return

    # Find the matching closing bracket for the pilotsById array
    i = array_start + 1
    depth = 1
    while i < len(content) and depth > 0:
        if content[i] == '[':
            depth += 1
        elif content[i] == ']':
            depth -= 1
        i += 1

    block = content[array_start:i]
    rest_of_file = content[i:]
    
    # Match all pilot blocks: { ... }
    pilot_pattern = re.compile(r'{[^{}]*?name:\s*"[^"]+".*?}', re.DOTALL)
    modified_block = pilot_pattern.sub(lambda m: insert_xws_name(m.group(0)), block)

    updated_content = content[:array_start] + modified_block + rest_of_file
    Path(output_file).write_text(updated_content, encoding="utf-8")
    print(f"✅ xws_name inserted after id in {output_file}")

# Example usage
process_file(
    r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common.coffee",
    r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common-xws.coffee")
