import json
import os


def attribute_check(data, attribute_name):
    if attribute_name not in data or data[attribute_name] is None:
        raise ValueError(f"The '{attribute_name}' key must be provided and cannot be None.")
    return data[attribute_name]


def attribute_check_path(data, attribute_name):
    if attribute_name not in data or data[attribute_name] is None:
        raise ValueError(f"The '{attribute_name}' key must be provided and cannot be None.")
    return os.path.normpath(data[attribute_name])


class Settings:
    def __init__(self, data):
        self.namespace = attribute_check(data, 'namespace')
        self.lang = attribute_check(data, 'lang')
        self.datapack = attribute_check_path(data, 'datapack')
        self.resourcepack = attribute_check_path(data, 'resourcepack')
        self.default_components = data.get('default_components', None)
        self.footer_lore = data.get('footer_lore', None)

    # Function to read JSON from a file
    def __repr__(self):
        return (
            f"Settings(namespace={self.namespace}, lang={self.lang}, "
            f"datapack={self.datapack}, resourcepack={self.resourcepack})")

    def get_lang_path(self):
        return os.path.join(self.resourcepack, 'assets', self.namespace, 'lang')

    def get_loot_table_path(self):
        return os.path.join(self.datapack, 'data', self.namespace, 'loot_table')

    def get_function_path(self):
        return os.path.join(self.datapack, 'data', self.namespace, 'function')


def get_trims():
    return {
        "materials": [
            "quartz",
            "iron",
            "netherite",
            "redstone",
            "copper",
            "gold",
            "emerald",
            "diamond",
            "lapis",
            "amethyst"
        ],
        "armor": [
            "gloomstone_boots",
            "gloomstone_helmet",
            "gloomstone_leggings",
            "gloomstone_chestplate",
            "ebonite_boots",
            "ebonite_helmet",
            "ebonite_leggings",
            "ebonite_chestplate",
            "shockweave_boots",
            "shockweave_helmet",
            "shockweave_leggings",
            "shockweave_chestplate",
            "mindweaver"
        ]
    }


def load_json_file(path):
    f = open(path, 'r', encoding='utf-8')
    return json.load(f)


