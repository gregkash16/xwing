import re
from pathlib import Path

def format_pilots_by_id(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    in_pilots = False
    bracket_depth = 0
    formatted = []
    pilot_block = []
    result = []

    for line in lines:
        if 'pilotsById:' in line:
            in_pilots = True
            formatted.append('    pilotsById: [\n')
            continue

        if in_pilots:
            stripped = line.strip()

            if stripped == ']':
                if pilot_block:
                    result.extend(pilot_block)
                    pilot_block = []
                in_pilots = False
                formatted.extend(result)
                formatted.append('    ]\n')
                continue

            if stripped.startswith('{'):
                if pilot_block:
                    result.extend(pilot_block)
                    pilot_block = []
                pilot_block.append('        {\n')
                continue

            if stripped.startswith('}'):
                pilot_block.append('        }\n')
                continue

            # Indent key-value lines properly
            if re.match(r'\w+:', stripped):
                pilot_block.append(f'            {stripped}\n')
            elif stripped.startswith('['):
                pilot_block.append(f'            {stripped}\n')
                bracket_depth += 1
            elif stripped.endswith(']'):
                pilot_block.append(f'            {stripped}\n')
                bracket_depth -= 1
            elif bracket_depth > 0 and stripped.startswith('"'):
                pilot_block.append(f'                {stripped}\n')
            elif not stripped:
                pilot_block.append('\n')
            else:
                pilot_block.append(f'            {stripped}\n')
        else:
            formatted.append(line)

    if pilot_block:
        result.extend(pilot_block)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.writelines(formatted)

    print(f"✅ Cleanly formatted pilotsById written to {output_file}")

# Example usage:
format_pilots_by_id(
    r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common.coffee",
    r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common-fixed.coffee"
)
