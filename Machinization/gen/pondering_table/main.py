root = "C:/Users/Ale/Documents/GitHub/Machinization/"
path = root+"datapack/data/mach/functions/block/pondering_table/ponder/"
path2 = root+"datapack/data/mach/item_modifiers/block/pondering_table/"
path3 = root+"resourcepack/assets/minecraft/models/item/"
path4 = root+"gen/pondering_table/"

import json

c = {"parent": "minecraft:item/template_shulker_box","textures": {"particle": "minecraft:block/yellow_shulker_box"},"overrides": []}

f = open(path+"as_player.mcfunction", "w")

shulker_models = open(path3+"recovery_compass.json","r")
shulker_models = json.loads(shulker_models.read())
shulker_models = shulker_models["overrides"][33:]
as_player = "clear @s #mach:shulkers{mach:{gui:1b}}\ndata remove storage mach:storage root.temp.item\n\n"

as_player_i = 0
resetter_file_writer = "data modify block ~ ~ ~ Items set from storage mach:storage root.temp.gui\n"

def gettype(recipe):
    if("type" in recipe):
        if recipe["type"] =="block": return "block"
    else: return "item"

recipes = open(path4+"recipes.json")
recipes = json.load(recipes)
for recipe in recipes["recipes"]:
    # run for every single recipe
    #   create line in as_player.mcfunction
    as_player += "execute unless data storage mach:storage root.temp.gui[{Slot:"+str(as_player_i)+"b,tag:{smithed:{id:\"mach:"+recipe["output"]+"\"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/"+recipe["output"]+"_check\n"
    #   create take_item/___check.mcfunction
    checker_file = open(path+"take_item/"+recipe["output"]+"_check.mcfunction", "w")
    giver_file = open(path+"take_item/"+recipe["output"]+"_give.mcfunction", "w")
    lore_file = open(path2+recipe["output"]+"_lore.json", "w")
    lore_json = [{"function": "minecraft:set_nbt","tag": "{mach:{gui:1b}}"},{"function": "minecraft:set_lore","entity": "this",
    "replace": "true","lore": [[{"translate": "gui.mach.ingredients","color": "gold","italic": "false"}]]}]
    
    #   write take_item/___check.mcfunction
    checker_file_writer = ""
    giver_file_writer = ""
    ingredient_i = 1
    checker_file_check = "execute "
    #       check for item count
    for ingredient in recipe["ingredients"]:
        if ingredient["src"]=="minecraft":
            if "unstackable" in ingredient:
                checker_file_writer+= "\ndata modify storage mach:storage root.temp.clear.in set value []\ndata modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:\"minecraft:"+ingredient["id"]+"\"}]\nfunction mach:block/pondering_table/clear/get_count_init\nscoreboard players operation $i"+str(ingredient_i)+" mach.data = $count mach.data \n\n"
                giver_file_writer += "\ndata modify storage mach:storage root.temp.clear.in set value []\ndata modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:\"minecraft:"+ingredient["id"]+"\"}]\nscoreboard players set $count mach.data "+ str(ingredient["count"])+"\nfunction mach:block/pondering_table/clear/clear_init\n\n"
            else:
                checker_file_writer+= "execute store result score $i"+str(ingredient_i)+" mach.data run clear @s "+ingredient["id"]+" 0\n"
                giver_file_writer += "clear @s " +ingredient["id"]+" "+str(ingredient["count"])+"\n"
            lore_json[1]["lore"].append([{"translate": "gui.mach.item_count","color": "gray","italic": False,"with":[{"text": str(ingredient["count"])},{"translate":ingredient["type"]+".minecraft."+ingredient["id"]}]}])
        else:
            checker_file_writer+= "execute store result score $i"+str(ingredient_i)+" mach.data run clear @s "+ingredient["base"]+"{smithed:{id:\""+ingredient["src"]+":"+ingredient["id"]+"\"}} 0\n\n"
            giver_file_writer += "clear @s "+ingredient["base"]+"{smithed:{id:\""+ingredient["src"]+":"+ingredient["id"]+"\"}} "+str(ingredient["count"])+"\n"
            lore_json[1]["lore"].append([{"translate": "gui.mach.item_count","color": "gray","italic": False,"with":[{"text": str(ingredient["count"])},{"translate":"item."+ingredient["src"]+"."+ingredient["id"]}]}])
        
        checker_file_check += "if score $i"+str(ingredient_i)+" mach.data matches "+str(ingredient["count"])+".. "
        ingredient_i += 1
    lore_file.write(json.dumps(lore_json, indent=2).replace("\"false\"","false").replace("\"true\"","true"))
    lore_file.close()
    
    giver_file_writer += "loot give @s loot mach:"+gettype(recipe)+"/"+recipe["output"]
    checker_file_check += "run function mach:block/pondering_table/ponder/take_item/"+recipe["output"]+"_give"
    checker_file_check += "\n\nloot replace block ~ ~ ~ container."+str(as_player_i)+" loot mach:"+gettype(recipe)+"/"+recipe["output"]+"\nitem modify block ~ ~ ~ container."+str(as_player_i)+" mach:block/pondering_table/"+recipe["output"]+"_lore\n"
    checker_file_check +="data modify block ~ ~ ~ Items[{Slot:"+str(as_player_i)+"b}].id set value \"minecraft:"+recipe["color"]+"_shulker_box\""
    if("custom_model_data" in recipe): checker_file_check += "\ndata modify block ~ ~ ~ Items[{Slot:"+str(as_player_i)+"b}].tag.CustomModelData set value " +str(recipe["custom_model_data"])
    #   build file
    checker_file_writer+=checker_file_check
    #   create reset file
    checker_file.write(checker_file_writer)
    checker_file.close()
    giver_file.write(giver_file_writer)
    giver_file.close()
    
    as_player_i+=1
    #       create appropriate new files
    for model in shulker_models:
        if(model["model"]=="mach:item/"+recipe["output"]):
            c["overrides"].append(model)

yellow_shulker = open(path3+"yellow_shulker_box.json", "w")

yellow_shulker.write(json.dumps(c, indent=2))
            
as_player +="\nexecute at @s run function mach:block/pondering_table/ponder/extra_items"

f.write(as_player)