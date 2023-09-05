OVERRIDE = True
import json
import pathlib
import os
path = str(pathlib.Path(__file__).resolve().parent)
path = path.replace("z_gen\item","")
path = path.replace("\\","/")
item_path = path+"z_item_database/items/"
loot_table_path = path+"datapack/data/adv/loot_tables/item/" 
lang_path = path+"resourcepack/assets/adv_lang/lang/en_us.json" 
recipe_path = path+"datapack/data/adv/functions/gameplay/recipes/"
lang = {}
from functions import *

shaped_str = ""
shapeless_str =""

namespace = "adv"
def itemline(item):
    count = ""
    item_tag = False
    if(item!=""):
        if(item[0]=='[' and item[2]==']'):
            count = item[1]
            item = item[3:]
        if(item[0]=='#'):
            item_tag = True
            item = item[1:]
    item=item.split(":")
    return item_tags(item,count,item_tag)

def item_tags(item,count,item_tag):
    if(item[0]==""): return "id:\"minecraft:air\""
    elif(count!=""):
        if(item_tag):
            if(len(item)==2):
                return "Count:"+count+"b,item_tag:[\""+namespace+":"+item[0]+"\"]"
            else:
                return "Count:"+count+"b,item_tag:[\"#minecraft:"+item[0]+"\"]"
        else:
            if(len(item)==2):
                return "Count:"+count+"b,id:\"minecraft:"+item[1]+"\",tag:{"+namespace+":{id:\""+item[0]+"\"}}"
            else:
                return "Count:"+count+"b,id:\"minecraft:"+item[0]+"\""
    else:
        if(item_tag):
            if(len(item)==2):
                return "item_tag:[\""+namespace+":"+item[0]+"\"]"
            else:
                return "item_tag:[\"#minecraft:"+item[0]+"\"]"
        else:
            if(len(item)==2):
                return "id:\"minecraft:"+item[1]+"\",tag:{"+namespace+":{id:\""+item[0]+"\"}}"
            else:
                return "id:\"minecraft:"+item[0]+"\""
    
def shaped_recipe(line,l):
    shaped=str(l)+":["
    s = 0
    for item in line:
        shaped+="{Slot:"+str(s)+"b,"+itemline(item)+"},"
        s+=1
    shaped += "],"
    return shaped

def shapeless_recipe(line):
    shapeless = ""
    for item in line:
        shapeless+= "{"+itemline(item)+"},"
    return shapeless

def get_recipe(recipe,id):
    global shaped_str
    global shapeless_str
    l = 0
    if(not "shapeless" in recipe):
        shaped_str  += "execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{"
        for line in recipe["recipe"]:
            shaped_str  += shaped_recipe(line,l)
            l+=1
        shaped_str +="} "
        shaped_str += "run loot replace block ~ ~ ~ container.16 loot adv:item/"+id+"\n\n"
        
    else:
        shapeless_str  += "execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches "+str(len(recipe["recipe"]))+" if data storage smithed.crafter:input {recipe:["
        shapeless_str  +=shapeless_recipe(recipe["recipe"])
        shapeless_str +="]} "
        shapeless_str += "run loot replace block ~ ~ ~ container.16 loot adv:item/"+id+"\n\n"

def item(filename,path,lang):
    item = open(path, encoding="utf-8")
    item = json.load(item)
    loot_path = loot_table_path +filename
    temp = {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:"+item["core"]["minecraft_id"]+"","functions":[{"function":"minecraft:set_nbt","tag":"{"+get_tag(filename.replace(".json",""),item,lang)+"}"}]}]}]}
    ## RECIPE
    if "recipe" in item:
        get_recipe(item["recipe"],filename.replace(".json",""))

    f = open(loot_path, "w")
    f.write(json.dumps(temp))
    f.close()

for filename in os.listdir(item_path):
    f = os.path.join(item_path, filename)
    if os.path.isfile(f):
        if(not file_exists(f) or OVERRIDE):
            item(filename,f,lang)
            print("> "+filename)

l = open(lang_path, "w")
l.write(json.dumps(lang,indent=1))
l.close()

w = open(recipe_path+"shaped.mcfunction", "w")
w.write(shaped_str.replace(",]","]").replace(",}","}"))
y = open(recipe_path+"shapeless.mcfunction", "w")
y.write(shapeless_str .replace(",]","]").replace(",}","}"))

print("DONE!")

"""
RECIPES EXAMPLES
        "recipe":[
            ["baller:diamond","stick",""],
            ["","dirt",""],
            ["","amongus:stone",""]
        ]
        "recipe":[
            ["cobblestone","stick",""],
            ["","dirt",""],
            ["","chungus:stone",""]
        ]
        "shapeless":"true",
        "recipe":[
            "[2]#baller:dirt",
            "[5]awooga"
        ]
    """