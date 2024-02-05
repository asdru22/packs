import copy
import json
import os
from collections import defaultdict
from PIL import Image

Override = True
Version = "1.0.0"

script_path = "scripts\\item"
lang_path = "resourcepack\\assets\\a\\lang"
loot_table_path = "datapack\\data\\a\\loot_tables\\items"
cmd_path = "resourcepack\\assets\\minecraft\\models\\item"
model_path = "resourcepack\\assets\\a\\models\\item"
texture_path = "resourcepack\\assets\\a\\textures\\item"
rp = []
grouped_dict = defaultdict(list)
lang_file = open(lang_path+"/english.json",'r',encoding='utf-8')
lang_json = json.loads(lang_file.read())
lang_file.close()

class Rarity:
    def __init__(self,id,color,weight,quality,max_quality,scrap_bonus,stat_boost,elemental):
        self.id = id
        self.color = color
        self.weight = weight
        self.quality = quality
        self.max_quality = max_quality
        self.scrap_bonus = scrap_bonus
        self.stat_boost = stat_boost
        self.elemental = elemental

class Element:
    def __init__(self,id):
        self.id = id
        self.color = self.getColor(id)
        
    def getColor(self,element):
        if element == "vortex":
            return "#74E3CD"
        elif element == "chaos":
            return "#CC3D6D"
        elif element == "rupture":
            return "#FFF67A"
        elif element == "stasis":
            return "#644DFF"

class Stat:
    def __init__(self,name,amount):
        self.name = name
        self.amount = amount
        self.type, self.color = self.getType()
        
    def getType(self):
        if self.name in ["damage","crit_damage","crit_chance","knockback","attack_speed","reach","projectile_speed","cast_cooldown"]:
            return "active","#ff0000"
        elif self.name in ["max_health","defense","max_stamina","movement_speed","knockback_resistance","luck","stamina_regeneration"]:
            return "passive","#00ff00"
        elif self.name in ["stamina_used","mining_power"]:
            return "other","#ffff00"
        
def statString(rarity,stat,element,elemental_boost):
    if stat.name == "cast_cooldown":
        stat = copy.deepcopy(stat)
        stat.amount = attemptInt(stat.amount/ 20)
        
    if not rarity.elemental:
        return normalString(stat)
    else:
        if stat.name in ["damage","defense"] and elemental_boost!=0:
            return elementalString(stat,element,elemental_boost)
        
        else:
            return normalString(stat)
        
def elementalString(stat,element,elemental_boost):
    return {"italic":False,"color":"gray","translate":f'item.stat.{stat.name}.elemental',"with":[{"text":f'{stat.amount}',"color":stat.color},{"translate":"item.stat.elemental","color":element.color,"with":[{"text":str(elemental_boost)},{"translate":f'icon.element.{element.id}',"font":"a:main"}]}]}
    
def normalString(stat):
    return {"italic":False,"color":"gray","translate":f'item.stat.{stat.name}',"with":[{"text":str(stat.amount),"color":stat.color}]}

class Item:
    def __init__(self, **kwargs):
        self.id = kwargs.get('id', '')
        self.name = kwargs.get('name', '')
        self.item = kwargs.get('item', '')
        self.type = kwargs.get('type', '')
        self.rarity = self.getRarity(kwargs.get('rarity', ''))
        self.max_quality = kwargs.get('max_quality', 0)
        self.element = self.getElement(kwargs.get('element', ''))
        self.scrap_amount = kwargs.get('scrap_amount', 0)
        self.elemental_boost = kwargs.get('elemental_boost', 0)
        self.etheric_trait = stringToVector(kwargs.get('etheric_trait', ''),max(25,len(self.name)+3))
        self.stats = self.getStats(kwargs.get('stats', {}))
        self.cmd = 0
        self.tint = kwargs.get('tint', -1)
        self.set_bonus = self.getSetBonus(kwargs.get('set_bonus', {}))

    def getSetBonus(self,set_bonus):
        if set_bonus != {}:
            r = set_bonus
            r["text"] = stringToVector(r["text"],max(25,len(self.name)+3))
            return r
        else:
            return {}
                    
    def getStats(self,stats):
        return [Stat(name, amount) for name, amount in stats.items()]
    
    def getRarity(self,rarities):
        if rarities != "":
            rarity_info = {
            "mundane": {"color": "#d0ffcc", "weight": 10, "quality": 1, "max_quality": 0, "scrap_bonus": 0, "stat_boost": 0, "elemental": False},
            "unusual": {"color": "#ff675c", "weight": 8, "quality": 3, "max_quality": 1, "scrap_bonus": 20, "stat_boost": 0, "elemental": False},
            "pristine": {"color": "#00ffa2", "weight": 7, "quality": 5, "max_quality": 1, "scrap_bonus": 20, "stat_boost": 3, "elemental": True},
            "radiant": {"color": "#FFDD00", "weight": 6, "quality": 7, "max_quality": 2, "scrap_bonus": 40, "stat_boost": 6, "elemental": True},
            "ethereal": {"color": "#9500ff", "weight": 5, "quality": 9, "max_quality": 3, "scrap_bonus": 40, "stat_boost": 10, "elemental": True},
            }

            return [Rarity(id=r, **rarity_info.get(r)) for r in rarities if r in rarity_info]
        else:
            return None
        
    def getElement(self,element):
        if element !='':
            return Element(element)
        else: return None
        
    def makeLootTable(self):
        loot_table_template = {"pools": [{"rolls": 1,"entries": []}]}
        for rarity in self.rarity:
            new_item = copy.deepcopy(self)
            loot_table_template["pools"][0]["entries"].append(makeEntry(new_item,rarity))

        loot_file = open(f'{loot_table_path}\{self.type}\{self.id}.json','w',encoding='utf-8')
        loot_file.write(json.dumps(loot_table_template,ensure_ascii=True))
        loot_file.close()
        
def makeEntry(item,rarity):
    item.rarity = rarity
    item.max_quality += rarity.max_quality
    item.stats,stats_tag,stats_lore = processStats(item)
    return {"type": "minecraft:item","weight": rarity.weight,"quality": rarity.quality,"name": f'minecraft:{item.item}',"functions": [{"function": "minecraft:set_nbt","tag": makeNBT(item,stats_tag,stats_lore)}]}

def processStats(item):
    rarity_mult = item.rarity.stat_boost
    scrap_mult = item.rarity.scrap_bonus
    item.scrap_amount = increaseByPercentage(item.scrap_amount,scrap_mult)
    stats_tag = []
    active = []
    passive = []
    other = []

    for stat in item.stats:

        if stat.type != "other":
            if stat.amount < 0: stat.amount = increaseByPercentage(stat.amount,-rarity_mult)
            else: stat.amount = increaseByPercentage(stat.amount,rarity_mult)
            
        if stat.name == "cast_cooldown":
            if stat.amount > 0: stat.amount = increaseByPercentage(stat.amount,-rarity_mult)
            else: stat.amount = increaseByPercentage(stat.amount,rarity_mult)
            
        stat.amount = attemptInt(stat.amount)
            
        if stat.type == "active": active.append(statString(item.rarity,stat,item.element,item.elemental_boost))
        if stat.type == "passive": passive.append(statString(item.rarity,stat,item.element,item.elemental_boost))
        if stat.type == "other":other.append(statString(item.rarity,stat,item.element,item.elemental_boost))

        stats_tag.append(f'{stat.name}:{stat.amount}')
            
    return item.stats,stats_tag,makeLore(active,passive,other)

def makeLore(active, passive, other):
    
    r1 = [""] if active else []
    r2 = [""] if passive else []
    r3 = [""] if other else []

    return r1+ active + r2 + passive + r3 + other

def makeNBT(item,stats_tag,stats_lore):
    return "{"+getVanillaNBT(item,stats_lore)+",a:{"+getCustomNBT(item,stats_tag)+"}}"

def getVanillaNBT(item,stats_lore):
    return f'Unbreakable:true,HideFlags:255,AttributeModifiers:[],CustomModelData:{item.cmd},display:{getDisplay(item,stats_lore)}'

def getDisplay(item,stats_lore):
    r = "{Name:\'"+getName(item)+"\',Lore:["+getLore(item,stats_lore)+"]"
    if item.tint != -1: r+=f",color:{item.tint}"
    return r+"}"

def getName(item):
    return json.dumps({"translate":f'item.{item.id}',"italic":False,"color":item.rarity.color})

def getLore(item,stats_lore):
    lore = loreJson(item,stats_lore)
    r = []
    for line in lore:
        r.append(f'\'{json.dumps(line,ensure_ascii=False)}\'')
    return ','.join(r)

def loreJson(item,stats_lore):
    r = []
    
    # element
    if item.element:
        r.append({"translate":"item.lore.description.element","color":"gray","italic":False,"with":[{"translate":f'item.rarity.{item.rarity.id}',"color":item.element.color},{"translate":f'item.type.{item.type}',"color":item.element.color},{"translate": f'item.element.{item.element.id}',"color":item.element.color}]})
    else:
        r.append({"translate":"item.lore.description.no_element","color":"#918474","italic":False,"with":[{"translate":f'item.rarity.{item.rarity.id}'},{"translate":f'item.type.{item.type}'}]})
    # stats
    if stats_lore: 
        r.extend(stats_lore)    
    # quality ☆★
    if item.max_quality >= 1:
        r.append("")
        quality_colors = ['#fc7f00', '#fc6533', '#fd4c66', '#fd3299', '#fe19cc', '#ff00ff']
        quality = [{"text": "☆", "color": quality_colors[i]} for i in range(item.max_quality)]
        r.append({"translate": "item.lore.quality", "italic": False, "color": "gray", "with": [quality]})
    # ethereal skill
    if item.rarity.id == "ethereal" and item.etheric_trait:
        r.append("")
        r.append([{"text":"e","color":"#5a00be","italic":False,"underlined":True},{"text":"t","color":"#6810c7"},{"text":"h","color":"#7720d1"},{"text":"e","color":"#8630db"},{"text":"r","color":"#9540e5"},{"text":"ic ","color":"#a450ef"},{"text":"t","color":"#9540e5"},{"text":"r","color":"#8630db"},{"text":"a","color":"#7720d1"},{"text":"i","color":"#6810c7"},{"text":"t","color":"#5a00be"}])

        for i in enumerate(item.etheric_trait, start=1):
            r.append({"translate": f'item.{item.id}.lore{i[0]}',"color":"gray","italic":False})
            
    if item.set_bonus != {}:
        r.append("")
        r.append({"translate":"item.lore.set_bonus","color":item.element.color,"underlined":True,"italic":False,"with":[{"translate":f'item.set_bonus.{item.set_bonus["id"]}.id'}]})
        for i in enumerate(item.set_bonus["text"], start=1):
            r.append({"translate": f'item.set_bonus.{item.set_bonus["id"]}.desc{i[0]}',"color":"gray","italic":False})
    return r

def getCustomNBT(item, stats_tag):
    r = f'id: "{item.id}", type: "{item.type}",version:{Version}'
    if item.type in ["melee","ranged","magic"]: r+= ",weapon:true"
    if item.type != "material": r+= ",copy:true"
    if item.rarity:
        r += f', rarity: "{item.rarity.id}"'
    if item.max_quality >= 1:
        r += f',quality:0, max_quality: {item.max_quality}'
    if item.element:
        r += f', element: "{item.element.id}"'
    if item.scrap_amount >= 1:
        r += f', scrap_amount: {item.scrap_amount}'
    if item.etheric_trait:
        r += f', etheric_trait: [{getEthericTrait(item.etheric_trait, item.id)}]'
    if item.set_bonus:
        r += f', set_bonus: [{getSetBonus(item.set_bonus,item.element)}]'
    if item.rarity.elemental and item.elemental_boost!=0:
        if item.type in ["melee","ranged","magic"]:
            r += f', elemental_damage: {item.elemental_boost}'
        elif item.type in ["helmet","chestplate","leggings","boots"]:
            r += f', elemental_defense: {item.elemental_boost}'
    if item.type != "material":
        r += ", stats: {"+getStatsTag(stats_tag)+"}"
    return r

def getEthericTrait(trait, id):
    return ','.join([f"'{json.dumps({'translate': f'item.{id}.lore{i}', 'color': 'gray', 'italic': False}, ensure_ascii=False)}'" for i, line in enumerate(trait, start=1)])


def getSetBonus(set_bonus,element):
    r= [{"translate":"item.lore.set_bonus","color":element.color,"underlined":True,"italic":False,"with":[{"translate":f'item.set_bonus.{set_bonus["id"]}.id'}]}]
    o = []
    for i in enumerate(set_bonus["text"], start=1):
        r.append({"translate": f'item.set_bonus.{set_bonus["id"]}.desc{i[0]}',"color":"gray","italic":False})
    for line in r:
        o.append(f'\'{json.dumps(line,ensure_ascii=False)}\'')
    return ','.join(o)

def getStatsTag(stats_tag):
    return ", ".join(stats_tag)


def stringToVector(input_string, max_line_length):
    words = input_string.split()
    lines = []
    current_line = []
    for word in words:
        if len(' '.join(current_line + [word])) <= max_line_length:
            current_line.append(word)
        else:
            lines.append(' '.join(current_line))
            current_line = [word]
    if current_line:
        lines.append(' '.join(current_line))
    return lines

def intAttempt(value):
    if isinstance(value, float) and value.is_integer():
        return int(value)
    return value

def increaseByPercentage(amount,percentage):
    return amount + amount*percentage/100

def roundDown(value):
    return int(value) if value.is_integer() else int(value * 10) / 10

def attemptInt(value):
    if isinstance(value, float):
        return roundDown(value)
    return value

def resourcepackData(item):
    model_key = f'item.{item["model"][1]}'
    lang_json[model_key] = item["name"]
    lore_lines = item["lore"]
    if lore_lines:
        lang_json.update({f'{model_key}.lore{i + 1}': line for i, line in enumerate(lore_lines)})
        
    set_bonus = item.get("set_bonus", {})
    if set_bonus:
        lang_json[f'item.set_bonus.{set_bonus["id"]}.id'] = set_bonus["name"]
        lang_json.update({f'item.set_bonus.{set_bonus["id"]}.desc{i}': text for i, text in enumerate(set_bonus.get("text", []), start=1)})

    #
    temp_item = item["item"]
    model = item["model"]
    grouped_dict[temp_item].append(model)
    count = len(grouped_dict[temp_item])
    # Add a key "count" to the input dictionary
    item["count"] = count
    
def makeItem(filename,item,type):
    item["type"] = type
    item["id"] = filename
    i = Item(**item)
    
    item_dict = {"item":i.item,"name":i.name,"model":(i.type,i.id),"lore":i.etheric_trait,"set_bonus":i.set_bonus}
    resourcepackData(item_dict)
    i.cmd = item_dict["count"]
    i.makeLootTable()

def makeTexture(type, id,suffix):
    if type == "shield": suffix = ""
    path = os.path.join(texture_path, type, id + suffix + ".png")
    if not os.path.exists(path):
        os.makedirs(os.path.dirname(path), exist_ok=True)  # Ensure the directory exists

        # Create an empty 16x16 PNG image
        image = Image.new("RGBA", (16, 16), (255, 255, 255, 255))
        for i in range(0, 16, 8):
            for j in range(0, 16, 8):
                if (i // 8 + j // 8) % 2 == 0:
                    # Set the color of the current square to black
                    for x in range(i, i + 8):
                        for y in range(j, j + 8):
                            image.putpixel((x, y), (0, 0, 0, 255))
        image.save(path, "PNG")

def makeModel(item, type, id,suffix):
    
    makeTexture(type,id,suffix)
    
    path = os.path.join(model_path, type, id + suffix + ".json")
    if (not os.path.exists(path)) or Override:
        if item == "bow":
            model = {"parent":"item/generated","textures":{"layer0": f'a:item/{type}/{id}{suffix}'},"display":{"thirdperson_righthand":{"rotation":[-80,260,-40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-80,-280,40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[0,-90,25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[0,90,-25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}

        elif item == "crossbow":
            model = {"parent":"item/generated","textures":{"layer0": f'a:item/{type}/{id}{suffix}'},"display":{"thirdperson_righthand":{"rotation":[-90,0,-60],"translation":[2,0.1,-3],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-90,0,30],"translation":[2,0.1,-3],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[-90,0,-55],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[-90,0,35],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}
        
        elif item in ["leather_boots","leather_chestplate","leather_leggings","leather_helmet"]:
            model = {"parent": "item/generated","textures":{"layer0":"a:item/empty","layer1": f'a:item/{type}/{id}'}}
                
        elif item == "shield":
            model = {"parent": f'a:item/shield/shield{suffix}',"textures": {"layer0": f'a:item/{type}/{id}{suffix}'}}
        elif item == "carrot_on_a_stick": # magic weapons
            model = {"parent":"item/handheld_rod","textures": {"layer0": f'a:item/{type}/{id}'}}
            # materials
        elif item == "recovery_compass": 
            model = {"parent":"item/generated","textures": {"layer0": f'a:item/{type}/{id}'}} 
            # melee weapons
        else: 
            model = {"parent":"item/handheld","textures": {"layer0": f'a:item/{type}/{id}'}}
            
        os.makedirs(os.path.dirname(path), exist_ok=True)  # Ensure the directory exists
        with open(path, 'w', encoding='utf-8') as f:
            f.write(json.dumps(model))
            f.close()
            
    return f'{type}/{id}{suffix}'

def modelOverride(item,type,id,cmd):
    if item == "bow":
        return [
            {"predicate": {"custom_model_data":cmd},"model": f'a:item/{makeModel(item,type,id,"")}'},
            {"predicate": {"custom_model_data":cmd,"pulling": 1},"model": f'a:item/{makeModel(item,type,id,"_pulling_0")}'},
            {"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 0.65},"model": f'a:item/{makeModel(item,type,id,"_pulling_1")}'},
            {"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 0.9},"model": f'a:item/{makeModel(item,type,id,"_pulling_2")}'}
        ]
    elif item == "crossbow":
        return [
            {"predicate": {"custom_model_data":cmd,"pulling": 1},"model": f'a:item/{makeModel(item,type,id,"")}'},
            {"predicate": {"custom_model_data":cmd,"pulling": 1, "pull": 0.58},"model": f'a:item/{makeModel(item,type,id,"_pulling_1")}'},
            {"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 1.0},"model": f'a:item/{makeModel(item,type,id,"_pulling_2")}'},
            {"predicate": {"custom_model_data":cmd, "charged": 1 },"model": f'a:item/{makeModel(item,type,id,"_arrow")}'},
            {"predicate": {"custom_model_data":cmd, "charged": 1 ,"firework": 1},"model": f'a:item/{makeModel(item,type,id,"_firework")}'}
        ]
        
    elif item == "shield":
        return [
            {"predicate": {"custom_model_data":cmd},"model": f'a:item/{makeModel(item,type,id,"")}'},
            {"predicate": {"custom_model_data":cmd,"blocking": 1},"model": f'a:item/{makeModel(item,type,id,"_blocking")}'}
        ]
    else:
        return [{"predicate": {"custom_model_data": cmd},"model": f'a:item/{makeModel(item,type,id,"")}'}]
        
def makeCMD(cmd):
    for item in cmd:
        model_json = {"overrides": []}
        
        for i, model in enumerate(item["model"], start=1):
            model_json["overrides"].extend(modelOverride(item["item"],model[0], model[1], i))

        with open(os.path.join(cmd_path, f'{item["item"]}.json'), 'w', encoding='utf-8') as model:
            json.dump(model_json, model)

def end():
    lang_file = open(lang_path+"/en_us.json",'w',encoding='utf-8')
    lang_file.write(json.dumps(lang_json))
    lang_file.close()
  
    cmd = [{"item": item, "model": models, "count": count} for item, models in grouped_dict.items() for count in range(1, len(models) + 1)]
    makeCMD(cmd)

for folder_name, subfolders, filenames in os.walk(script_path):
    for filename in filenames:
        if filename.endswith(".json"):
            file_path = os.path.join(folder_name, filename)
            with open(file_path, 'r') as file:
                item_data = json.load(file)
                file.close()
            type = os.path.dirname(file_path).split("\\")
            makeItem(filename[:-5],item_data,type[-1])

end()