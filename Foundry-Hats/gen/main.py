import os
import json
# Get the directory where the script is located
script_dir = os.path.dirname(os.path.abspath(__file__))

# Navigate to the project root (Foundry-Hats) directory
project_root = os.path.abspath(os.path.join(script_dir, '..'))

# Change the current working directory to the project root
os.chdir(project_root)

data_path = json_path = os.path.join(script_dir, 'hats.json')
advancement_path = os.path.join(project_root, 'fhats-datapack', 'data', 'fhats', 'advancement', 'technical', 'inventory_changed')
lang_path = os.path.join(project_root, 'fhats-resourcepack', 'assets', 'fhats', 'lang', 'en_us.json')
model_path = os.path.join(project_root, 'fhats-resourcepack', 'assets', 'minecraft', 'models', 'item')
loot_table_path = os.path.join(project_root, 'fhats-datapack', 'data', 'fhats', 'loot_table', 'items')
function_path = os.path.join(project_root, 'fhats-datapack', 'data', 'fhats', 'function', 'item')
give_path = os.path.join(project_root, 'fhats-datapack', 'data', 'fhats', 'function', 'item','__give_all.mcfunction')

def make_advancements(path,id,dyeable):
    head_item = "poisonous_potato"
    inventory_item = "netherite_helmet"
    if dyeable:
        head_item = "leather_horse_armor"
        inventory_item = "leather_helmet"

    # equip
    file = open(os.path.join(path,'equip.json'),"w")
    data = {"parent":"fhats:technical/root","criteria":{f"equip_{id}":{"trigger":"minecraft:inventory_changed","conditions":{"player":{"equipment":{"head":{"items":[f"minecraft:{inventory_item}"],"predicates":{"minecraft:custom_data":{"fhats":{"id":id}}}}}},"items":[{"items":[f"minecraft:{inventory_item}"],"predicates":{"minecraft:custom_data":{"fhats":{"id":id}}}}]}}},"rewards":{"function":f"fhats:item/{id}/equip"},"requirements":[[f"equip_{id}"]]}
    file.write(json.dumps(data,indent=4))
    file.close()

    # unequip
    file = open(os.path.join(path,'unequip.json'),"w")
    data = {"parent":"fhats:technical/root","criteria":{f"pick_up_{id}":{"trigger":"minecraft:inventory_changed","conditions":{"items":[{"items":[f"minecraft:{head_item}"],"predicates":{"minecraft:custom_data":{"fhats":{"id":id}}}}]}}},"rewards":{"function":f"fhats:item/{id}/unequip"},"requirements":[[f"pick_up_{id}"]]}
    file.write(json.dumps(data,indent=4))
    file.close()


def make_model_file(data,id):
    m = open(os.path.join(model_path,id),'w')
    m.write(json.dumps(data,indent=4))
    m.close()


def make_loot_table(id,data):

    item = "netherite_helmet"
    if "dyeable" in data: item = "leather_helmet"

    loot_table = {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":f"minecraft:{item}","functions":[{"function":"minecraft:set_components","components":{"minecraft:item_name":"{\"translate\":\"item.fhats."+id+"\"}","minecraft:custom_model_data":cmd,"minecraft:custom_data":"{fhats:{id:\""+id+"\",hat:true}}","!minecraft:damage":{},"!attribute_modifiers":{},"!enchantments":{}}}]}]}]}

    if not ("dyeable" in data):
        loot_table["pools"][0]["entries"][0]["functions"][0]["components"]["!fire_resistant"] = {}
        loot_table["pools"][0]["entries"][0]["functions"][0]["components"]["max_stack_size"] = 1


    file = open(os.path.join(loot_table_path,f"{id}.json"),'w')
    file.write(json.dumps(loot_table,indent=4))
    file.close()

def make_function(path,id,dyeable):
    # equip    
    if(dyeable):
        str = f"function fhats:item/_generic_hat/dyeable/equip\nadvancement revoke @s only fhats:technical/inventory_changed/{id}/equip"
    else:
        str = f"function fhats:item/_generic_hat/undyeable/equip\nadvancement revoke @s only fhats:technical/inventory_changed/{id}/equip"

    f = open(os.path.join(path,"equip.mcfunction"),'w')
    f.write(str)
    f.close()

    # unequip    
    if(dyeable):
        str = "function fhats:item/_generic_hat/dyeable/unequip {id:\""+id+"\"}\nadvancement revoke @s only fhats:technical/inventory_changed/"+id+"/unequip"
    else:
        str = "function fhats:item/_generic_hat/undyeable/unequip {id:\""+id+"\"}\nadvancement revoke @s only fhats:technical/inventory_changed/"+id+"/unequip"

    f = open(os.path.join(path,"unequip.mcfunction"),'w')
    f.write(str)
    f.close()

def get_helmet_model(material):
    return {"parent":"minecraft:item/generated","overrides":[{"model":f"minecraft:item/{material}_helmet_quartz_trim","predicate":{"trim_type":0.1}},{"model":f"minecraft:item/{material}_helmet_netherite_trim","predicate":{"trim_type":0.2}},{"model":f"minecraft:item/{material}_helmet_netherite_trim","predicate":{"trim_type":0.3}},{"model":f"minecraft:item/{material}_helmet_redstone_trim","predicate":{"trim_type":0.4}},{"model":f"minecraft:item/{material}_helmet_copper_trim","predicate":{"trim_type":0.5}},{"model":f"minecraft:item/{material}_helmet_gold_trim","predicate":{"trim_type":0.6}},{"model":f"minecraft:item/{material}_helmet_emerald_trim","predicate":{"trim_type":0.7}},{"model":f"minecraft:item/{material}_helmet_diamond_trim","predicate":{"trim_type":0.8}},{"model":f"minecraft:item/{material}_helmet_lapis_trim","predicate":{"trim_type":0.9}},{"model":f"minecraft:item/{material}_helmet_amethyst_trim","predicate":{"trim_type":1.0}}],"textures":{"layer0":f"minecraft:item/{material}_helmet","layer1":f"minecraft:item/{material}_helmet_overlay"}}

f = open(data_path,'r')

data = json.loads(f.read())
f.close()

lang = {}
give = []

cmd = 888000-1

leather_helmet_model = get_helmet_model("leather")
netherite_helmet_model = get_helmet_model("netherite")
leather_horse_armor_model = {"parent":"minecraft:item/generated","textures":{"layer0":"minecraft:item/leather_horse_armor"},"overrides":[]}
poisonous_potato_model = {"parent":"minecraft:item/generated","textures":{"layer0":"minecraft:item/poisonous_potato"},"overrides":[]}

for id, value in data.items():
    cmd+=1
    # get advancement folder
    advancement_folder = os.path.join(advancement_path,id)
    os.makedirs(advancement_folder, exist_ok=True)

    # make advancment folder
    make_advancements(advancement_folder,id,"dyeable" in value)

    # translation
    lang[f"item.fhats.{id}"] = value["translation"]

    # vanilla model overrides
    if("dyeable" in value):
        leather_helmet_model["overrides"].append({"predicate":{"custom_model_data":cmd},"model":f"fhats:item/{id}"})
        leather_horse_armor_model["overrides"].append({"predicate":{"custom_model_data":cmd},"model":f"fhats:item/{id}"})
    else:
        netherite_helmet_model["overrides"].append({"predicate":{"custom_model_data":cmd},"model":f"fhats:item/{id}"})
        poisonous_potato_model["overrides"].append({"predicate":{"custom_model_data":cmd},"model":f"fhats:item/{id}"})

    # loot table
    make_loot_table(id,value)

    # make function folder
    # get advancement folder
    function_folder = os.path.join(function_path,id)
    os.makedirs(function_folder, exist_ok=True)
    make_function(function_folder,id,"dyeable" in value)

    # add to give command
    give.append(f"loot give @s loot fhats:items/{id}\n")
    
l = open(lang_path,'w')
l.write(json.dumps(lang,indent=4))
l.close()

make_model_file(leather_helmet_model,"leather_helmet.json")
make_model_file(netherite_helmet_model,"netherite_helmet.json")
make_model_file(leather_horse_armor_model,"leather_horse_armor.json")
make_model_file(poisonous_potato_model,"poisonous_potato.json")


g = open(give_path,'w') 
g.write(''.join(give))
g.close()