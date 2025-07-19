import json


def count_loot_table(namespace, item_id, count):
    return json.dumps({"pools": [
        {"rolls": 1, "entries": [{"type": "minecraft:loot_table", "value": f"{namespace}:items/{item_id}"}],
         "functions": [{"function": "minecraft:set_count", "count": count}]}]})


def shaped_recipe(shaped, item, namespace):
    recipe = item.recipe
    item_id = item.id
    key_map = recipe['key']
    pattern = recipe['pattern']

    # Create a new pattern with replacements
    new_pattern = []
    for row in pattern:
        # Replace each character in the row with the corresponding value from key_map, if exists
        replaced_row = [key_map.get(char, char) for char in row]
        new_pattern.append(replaced_row)

    out = ("execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] "
           "if data storage smithed.crafter:input recipe{")
    col = 0

    for row in new_pattern:
        if not row == []:
            out += f"{col}:["
            slot = 0
            for item in row:
                if item == " ":
                    out += "{Slot:" + str(slot) + "b,id:\"minecraft:air\"}"
                elif ":" not in item or item.startswith("minecraft:"):
                    # Process as a minecraft item (default or explicit minecraft namespace)
                    item_name = item if ":" in item else "minecraft:" + item  # Add 'minecraft:' if missing
                    out += "{Slot:" + str(slot) + "b,id:\"" + item_name + "\"}"
                elif item.startswith("cgn:"):
                    # Process a custom item
                    out += "{Slot:" + str(
                        slot) + "b,components:{\"minecraft:item_name\":'{\"translate\":\"item." + namespace + "." + item[
                                                                                                                    4:] + "\"}'}}"
                slot += 1
                if not slot == 3:
                    out += ","
            out += "],"
        col += 1
    # empty list case
    if pattern[1] == [] or pattern[2] == []:
        out += "} "
        if pattern[1] == [] and pattern[2] == []:
            out += "if data storage smithed.crafter:input recipe{1:[],2:[]"
        elif not pattern[1]:
            out += "if data storage smithed.crafter:input recipe{1:[]"
        elif not pattern[2]:
            out += "if data storage smithed.crafter:input recipe{2:[]"
    out += "} run "

    out += "loot replace block ~ ~ ~ container.16 loot "
    if "count" not in recipe["result"] or recipe["result"]["count"] == 1:
        out += f"{namespace}:items/{item_id}"
    else:
        out += count_loot_table(namespace, item_id, recipe["result"]["count"])

    shaped.append(out)


def shapeless_recipe(shaped, recipe, item_id, namespace):
    pass


def make_crafting_recipe(shaped, shapeless, item, namespace):
    if item.recipe["type"] == 'minecraft:crafting_shaped':
        shaped_recipe(shaped, item, namespace)
    elif item.recipe["type"] == 'minecraft:crafting_shapeless':
        shaped_recipe(shapeless, item.recipe, item.id, namespace)
