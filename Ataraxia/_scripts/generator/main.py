from item import *
import os

override = True

items = json.loads(open("_scripts/generator/_items.json", "r").read())

def make_items(override,items):
    lang = {}
    for item in items:
        i = Item(item=item["item"],id=item["name"],type=item["type"],custom_model_data=item["custom_model_data"],rarity=item["rarity"],stats=item["stats"],durability=item["durability"],lore=item["lore"],level_required=item["level_required"],set_bonus=item["set_bonus"])
        if (not os.path.exists(f"datapack/data/atr/loot_tables/items/{i.id}.json")) or override:
            i.make_lang(lang)
            i.make()
            print(f"Generated <{i.name}>.")
    with open(f"resourcepack/assets/atr_items/lang/en_us.json", "w") as l:
        l.write(json.dumps(lang,indent=1))

make_items(override=override,items=items)