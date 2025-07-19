import json
import os

from item.Crafting import make_crafting_recipe
from item.Util import Settings, load_json_file
from item.Item import Item
from item.LootTable import make_loot_table


def process_item(item, settings, lang, shaped_recipe, shapeless_recipe):
    make_loot_table(item, settings)

    lang[item.translation_name] = item.translation
    if item.recipe:
        make_crafting_recipe(shaped_recipe, shapeless_recipe, item, settings.namespace)


def open_item_files(directory, settings, lang,shaped_recipes,shapeless_recipes):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json"):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r') as json_file:
                        data = json.load(json_file)
                        item = Item(file_path, data, settings)
                        process_item(item, settings, lang, shaped_recipes, shapeless_recipes)
                except json.JSONDecodeError as e:
                    print(f"Error decoding JSON file {file_path}: {e}")
                except Exception as e:
                    print(f"Error opening file {file_path}: {e}")


def main():
    # pre
    settings = Settings(load_json_file('settings.json'))
    lang_path = settings.get_lang_path()
    lang_file = load_json_file(os.path.join(lang_path, settings.lang))
    shaped_recipes = ['data modify storage smithed.crafter:input flags set value ["consume_tools"]']
    shapeless_recipes = []
    # process
    open_item_files('items', settings, lang_file,shaped_recipes,shaped_recipes)
    # post
    new_lang = open(os.path.join(lang_path, 'en_us.json'), 'w')
    new_lang.write(json.dumps(lang_file, indent=2))
    shaped_recipes_file = open(os.path.join(settings.get_function_path(),'recipe','shaped.mcfunction'),'w')
    shaped_recipes_file.write('\n'.join(shaped_recipes))


if __name__ == '__main__':
    main()
    print("Done!")
