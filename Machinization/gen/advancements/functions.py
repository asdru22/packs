root = "C:/Users/Ale/Documents/GitHub/Machinization/"
path = root+"gen/advancements/"
path2 = "datapack/data/mach/advancements/gameplay/"
path3 = root+"resourcepack/assets/minecraft/models/item/"
import json
import os

def new_advancement(advancement,recipes):
    temp ={"display": {"icon": {"item": "minecraft:"+advancement["item"]["id"],"nbt": "{CustomModelData:"+getCMD(advancement["item"])+"}"},"title": [{"translate": advancement["item"]["type"]+".mach."+advancement["item"]["name"]},{"text":"\uc004","font":"mach:gui"}],"description": get_description(advancement,recipes),"frame": get_frame(advancement["item"]["type"]),"show_toast": "false","announce_to_chat": "false"},"parent": "mach:gameplay/"+advancement["parent"],"criteria": {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {"items": [{"items":["minecraft:"+advancement["item"]["id"]],"nbt": "{smithed:{id:\"mach:"+advancement["item"]["name"]+"\"}}"}]}}}}

    a = open(path2+advancement["item"]["name"]+".json", "w")
    a.write(json.dumps(temp, indent=2).replace("\"false\"","false"))


def get_description(advancement,recipes):
  if(advancement["ingredients"]=="reference"):
    for recipe in recipes["recipes"]:
      if(recipe["output"]==advancement["item"]["name"]):
        lore_json = []
        build_lore(recipe,lore_json)
  else:
    lore_json = []
    build_lore(advancement,lore_json)
  lore_json.append([{"translate": "gui.mach.at_machine","color": "green","italic": False,"with":[{"translate": "block.mach."+advancement["machine"]}]}])
  if("description" in advancement):
    lore_json.append("\n\n")
    lore_json.append({"translate":"gui.mach."+advancement["item"]["name"],"italic":False,"color":"white"})

  return lore_json

def build_lore(recipe,lore_json):
  for ingredient in recipe["ingredients"]:
        if ingredient["src"]=="minecraft":
            lore_json.append({"translate": "gui.mach.item_count","color": "gray","italic": False,"with":[{"text": str(ingredient["count"])},{"translate":ingredient["type"]+".minecraft."+ingredient["id"]}]})
        else:
            lore_json.append({"translate": "gui.mach.item_count","color": "gray","italic": False,"with":[{"text": str(ingredient["count"])},{"translate":"item."+ingredient["src"]+"."+ingredient["id"]}]})
        lore_json.append("\n")
        
def getCMD(item):
  if(item["custom_model_data"]=="reference"):
    compass_models = open(path3+"recovery_compass.json","r")
    compass_models = json.loads(compass_models.read())
    compass_models = compass_models["overrides"][33:]
    for model in compass_models:
      if(model["model"]== "mach:item/"+item["name"]):
        return str(model["predicate"]["custom_model_data"])
  else: return str(item["custom_model_data"])
  
def get_frame(type):
  if type!="block": return "task"
  elif type =="block": return "goal"
  
def checkfile(path,override):
  if override: return True
  if not os.path.exists(path): return True
  else: return False