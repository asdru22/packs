import json
import re


class Item:
    def __init__(self, item, id, type, custom_model_data, rarity, stats=None, durability=None, lore=None,
                 level_required=None, set_bonus=None):
        self.item = item
        self.name = id
        self.id = camel_to_snake(id)
        self.type = type  # "weapon"
        self.stats = process_stats(stats)
        self.slot = get_slot(type)
        self.custom_model_data = str(custom_model_data)
        self.durability = str(durability)
        self.rarity = rarity
        self.level_required = str(level_required)
        self.lore = split_line(lore)
        self.set_bonus = split_line(set_bonus)

    def get_lore(self):
        lore = [{"translate": "atr.lore.type","with": [{"translate": "atr.rarity." + self.rarity}, {"translate": "atr.type." + self.type}],"color": get_rarity_color(self.rarity), "italic": "false"}]
        last_stat_type = ""
        for stat in self.stats:  # stats

            if last_stat_type != get_stat_type(stat[0]):
                lore.append("")
            lore.append({"translate": "atr.lore.stat", "with": [{"translate": "atr.stat." + stat[0]}, {"text": stat[1],"color": get_stat_color(get_stat_type(stat[0]))}],"italic": "false", "color": "gray"})
            last_stat_type = get_stat_type(stat[0])

        if self.set_bonus is not None:
            lore.append("")
            lore.append({"translate": "atr.lore.set_bonus", "color": "gold", "italic": "false"})
            c = 1
            for l in self.set_bonus:
                lore.append(
                    {"translate": "atr.lore." + self.id + ".set_bonus." + str(c), "color": "white", "italic": "false"})
                c += 1

        if self.level_required is not None or self.durability is not None:
            lore.append("")
        if self.level_required is not None:
            lore.append({"translate": "atr.lore.level_required", "with": [{"text": self.level_required, "color": "yellow"}],
             "italic": "false", "color": "gray"})
        if self.durability is not None:
            lore.append({"translate": "atr.lore.durability","with": [{"text": self.durability, "color": "white"},{"text": self.durability, "color": "white"}],"italic": "false", "color": "gray"})

        if self.lore is not None:
            lore.append("")
            c = 1
            for l in self.set_bonus:
                lore.append(
                    {"translate": "atr.lore." + self.id + ".lore." + str(c), "color": "dark_gray", "italic": "false"})
                c += 1
        return ",Lore:" + flatten_json_array(lore)

    def get_name(self):
        return json.dumps({"translate": "atr.item." + self.id, "italic": "false", "color": "white"})

    def get_atr_data(self):
        r = "type:" + self.type + ",stats:{"
        for stat in self.stats:
            r += f"{stat[0]}:{stat[1]},"
        r += "}"
        if self.level_required is not None:
            r += ",level_required:" + self.level_required
        if self.durability is not None:
            r += ",durability:{current:" + self.durability + ",max:" + self.durability + ",repaired:1b}"
        if self.rarity is not None:
            r += ",rarity:" + self.rarity
        return r

    def get_tag(self):
        r = "{"
        r += "Unbreakable:1b,HideFlags:254,AttributeModifiers:[],CustomModelData:" + self.custom_model_data + ",display:{Name:\'" + self.get_name() + "\'" + self.get_lore() + "},atr:{" + self.get_atr_data() + "}"
        return r + "}"

    def make(self):
        loot = {"pools": [{"rolls": 1, "entries": [{"type": "minecraft:item", "name": f"minecraft:{self.item}","functions": [{"function": "minecraft:set_nbt", "tag": self.get_tag()}]}]}]}
        if self.stats is not None:
            loot["pools"][0]["entries"][0]["functions"].append({"function": "minecraft:set_attributes", "modifiers": [{"attribute": "minecraft:generic.luck", "name": "", "amount": {"min": 1e-15, "max": 1e-8},"operation": "addition", "slot": self.slot}]})

        with open(f"datapack/data/atr/loot_tables/items/{self.id}.json", "w") as loot_table:
            loot_table.write(
                json.dumps(loot, indent=1).replace("\\\"false\\\"", "false").replace("\\\"true\\\"","true"))
            loot_table.close()

    def make_lang(self, lang):
        lang["atr.item." + self.id] = self.name

        if self.set_bonus is not None:
            c = 1
            for l in self.set_bonus:
                lang["atr.lore." + self.id + ".set_bonus." + str(c)] = l
                c += 1

        if self.lore is not None:
            c = 1
            for l in self.lore:
                lang["atr.lore." + self.id + ".lore." + str(c)] = l
                c += 1


def split_line(input_string):
    return input_string.split("\n")


def process_stats(stats):
    r = []
    for key, value in stats.items():
        r.append((key, str(value)))
    return r


def get_stat_color(stat_type):
    match stat_type:
        case "active":
            return "#FF0000"
        case "passive":
            return "#32CD32"
        case "magic":
            return "#00FFFF"


def get_slot(type):
    match type:
        case "weapon":
            return "mainhand"
        case "accessory":
            return "offhand"
        case "helmet":
            return "head"
        case "chestplate":
            return "chest"
        case "leggings":
            return "legs"
        case "boots":
            return "feet"


def flatten_json_array(a):
    r = "["
    for e in a:
        r += "\'" + json.dumps(e) + "\',"
    return r + "]"


def get_rarity_color(rarity):
    print (rarity)
    match rarity:
        case "common":
            return "#FFFFFF"
        case "rare":
            return "#1EFF00"
        case "epic":
            return "#0070DD"
        case "mythic":
            return "#A335EE"
        case "legendary": return "#FF8000"


def get_stat_type(stat):
    active_stats = ["melee_damage", "magic_damage", "ranged_damage", "crit_chance", "crit_damage", "attack_speed",
                    "scope", "vitality", "vigor"]
    passive_stats = ["max_health", "health_regeneration", "defense", "movement_speed", "endurance", "draw_speed"]
    magic_stats = ["max_mana", "mana_regeneration"]

    if stat in active_stats:
        return "active"
    elif stat in passive_stats:
        return "passive"
    elif stat in magic_stats:
        return "magic"


def camel_to_snake(input_string):
    words = re.findall(r'\w+', input_string)
    return '_'.join(word.lower() for word in words)
