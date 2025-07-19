import json
import os


def get_lore(lore, settings):
    output = []

    if settings.footer_lore:
        output.append(settings.footer_lore)
        if lore:
            output.append("")

    if lore:
        output.extend(lore)
    return {
        "function": "minecraft:set_lore",
        "lore": output,
        "mode": "replace_all"
    }


def get_name(item, namespace):
    item.translation_name = f"item.{namespace}.{item.id}"
    return {"function": "minecraft:set_name",
            "target": "item_name",
            "name": {"translate": item.translation_name}}


def get_functions(item, settings):
    functions = [
        {
            "function": "minecraft:set_components",
            "components": item.components
        },
        get_name(item, settings.namespace)
    ]
    if item.lore or settings.footer_lore:
        functions.append(get_lore(item.lore, settings))

    return functions


def make_loot_table(item, settings):
    loot_table = {"pools": [
        {"rolls": 1, "entries": [
            {
                "type": "minecraft:item",
                "name": f"minecraft:{item.base_item}"
            }
        ],
         "functions": get_functions(item, settings)}]}
    out = open(os.path.join(settings.get_loot_table_path(),'items',f'{item.id}.json'), 'w')
    out.write(json.dumps(loot_table, indent=2))
