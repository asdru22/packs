import json
import re
import os

stick_json = {
    "parent": "minecraft:item/handheld_rod",
    "textures": {
      "layer0": "minecraft:item/stick"
    },
    "overrides": []
}

def get_loot_table(item):
    json_template = {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:stick","functions":[{"function":"minecraft:set_nbt","tag":"{cbs:{id:\""+lower(item["name"])+"\",name:'{\"translate\":\"cbs.item."+lower(item["name"])+"\",\"italic\": false}'},CustomModelData:"+str(item["cmd"])+",display:{Name:'\"\"'}}"}]}]}]}
    loot_table = open("datapack/data/cbs/loot_tables/item/"+lower(item["name"])+".json","w")
    loot_table.write(json.dumps(json_template))
    loot_table.close()
    
def append_model(item):
    return {
        "predicate": {
          "custom_model_data": item["cmd"]
        },
        "model": "cbs:item/"+lower(item["name"])
      }

def combo_desc(combo):
    return "\u00a7a"+combo["keys"]+">\u00a7e "+combo["name"]+":\u00a7f "+combo["desc"]+" ("+str(combo["cost"])+"%1$s)\n"

def lower(text):
    snake_case_text = re.sub(r'([a-z0-9])([A-Z])', r'\1_\2', text)
    snake_case_text = snake_case_text.lower()
    snake_case_text = snake_case_text.replace(" ","_")
    return snake_case_text

def key_to_num(keys):
    num = ""
    for c in keys:
        if(c=='L'): num +="1"
        elif(c=='R'): num +="2"
    return num

def get_command(combo,id):
    return "execute if score @s cbs.clicks matches "+key_to_num(combo["keys"])+" run function cbs:player/clicks/combinations {combo:\""+lower(combo["name"])+"\",stamina:"+str(combo["cost"])+",id:\""+id+"\"}\n"

def get_display(item,i):
    return "execute positioned "+str(item["pos"][0])+" "+str(item["pos"][1])+" "+str(item["pos"][2])+" summon minecraft:interaction run function cbs:display/item_select/base {item:\""+lower(item["name"])+"\",offense:\""+'a'*(item["offense"])+"\",defense:\""+'a'*(item["defense"])+"\",utility:\""+'a'*(item["utility"])+"\"}\n"

lang_file = open("resourcepack/assets/cbs/lang/lang.json",'r',encoding='utf-8')
lang_json = json.loads(lang_file.read())
lang_file.close()
lang_file = open("resourcepack/assets/cbs/lang/en_us.json",'w',encoding='utf-8')

items = open("scripts/items/items.json",'r',encoding='utf-8')
items = json.loads(items.read())

display_commands = "kill @e[tag=cbs.item_select]\n"
stick_model = open("resourcepack/assets/minecraft/models/item/stick.json",'w')

c = 0
for item in items:
    item["cmd"] = c+1
    stick_json["overrides"].append(append_model(item))
    get_loot_table(item)
    lang_json["cbs.item."+lower(item["name"])] = item["name"]
    mcfunction_path = "datapack/data/cbs/functions/items/"+lower(item["name"])
    os.makedirs(mcfunction_path, exist_ok=True)
    combo_mcfunction_file = open(mcfunction_path+"/"+"combos.mcfunction",'w')
    combo_mcfunction_commands = "# left -> 1\n# right -> 2\n"
    desc = "" 
    
    for combo in item["combos"]:
        lang_json["cbs.combo."+lower(combo["name"])] = combo["name"]
        desc += combo_desc(combo)
        combo_mcfunction_commands += get_command(combo,lower(item["name"]))
        os.makedirs(mcfunction_path+"/"+lower(combo["name"]), exist_ok=True)
        if not os.path.exists(mcfunction_path+"/"+lower(combo["name"])+"/init.mcfunction"):
            t = open(mcfunction_path+"/"+lower(combo["name"])+"/init.mcfunction",'w')
            t.close()
        
    lang_json["cbs.desc."+lower(item["name"])] = desc[:-1]
    combo_mcfunction_file.write(combo_mcfunction_commands)
    combo_mcfunction_file.close()
    display_commands += get_display(item,c)
    c += 1
        
stick_model.write(json.dumps(stick_json,indent=2))
lang_file.write(json.dumps(lang_json,indent=2))
display_mcfunction_file = open("datapack/data/cbs/functions/display/item_select/init.mcfunction",'w')
display_mcfunction_file.write(display_commands)