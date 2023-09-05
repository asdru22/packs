import json
from aux_functions import *

prefix = 6530000

def get_tag(id,item,lang):
    lang["item.adv."+id] =item["core"]["name"]                  
    tag = "Unbreakable:1b,HideFlags:126"
    tag += ",CustomModelData:"+str(prefix+item["core"]["custom_model_data"])
    tag+= ",adv:{id:\""+id+"\",Type:"+get_type(item["core"]["type"].capitalize())
    tag += ",Rarity:\""+get_rarity(item["core"]["rarity"])[0].capitalize()+"\""
    if "other" in item and "additional_adv_tag" in item["other"]:
        tag += ","+ item["other"]["additional_adv_tag"]
    tag += "}"
    if("attributes" in item):
        attribute_list = get_attributes(item["attributes"],item["core"]["type"])
        tag += ",AttributeModifiers:["+attr_to_tag(attribute_list)+"]"
    if "other" in item and "additional_mc_tag" in item["other"]:
        tag += ","+ item["other"]["additional_mc_tag"]
##################### DISPLAY #############
    tag +=",display:{Name:'"+json.dumps({"translate":"item.adv."+id+"","italic":"false","color":""+get_rarity(item["core"]["rarity"])[1]+""}).replace("\"false\"","false")+"'"
    if "color" in item["core"]: tag += ",color:"+str(item["core"]["color"])
    tag += ",Lore:["
    
    ### TYPE
    temp = t.lower()
    if(temp== "melee" or temp == "magic" or temp == "ranged"): temp = "weapon"
    if(temp=="helmet" or temp=="chestplate" or temp== "leggings" or temp == "boots"): temp = "armor"
    tag += "'"+ json.dumps({"translate":"item.adv.type."+temp+"","italic":"false","color":"dark_gray"}).replace("\"false\"","false") +"',"
    
    ### LORE
    if("other" in item and "lore" in item["other"]):
        count = 0
        tag += "'\"\"',"
        for line in item["other"]["lore"]:
            tag += "'"+ json.dumps({"translate":"item.adv."+id+".lore."+str(count)+"","italic":"false","color":"gray"}).replace("\"false\"","false") +"',"
            lang["item.adv."+id+".lore."+str(count)] =line
            count +=1
            
    #### SET BONUS
    if("other" in item and "set_bonus" in item["other"]): 
        count = 0
        tag += "'\"\"',"
        tag += "'"+ json.dumps({"translate":"item.adv.set_bonus","italic":"false","color":"dark_green","underlined":"true"}).replace("\"false\"","false") +"',"
        for line in item["other"]["set_bonus"]:
            tag += "'"+ json.dumps({"translate":"item.adv."+id+".set_bonus."+str(count)+"","italic":"false","color":"gray"}).replace("\"false\"","false") +"',"
            lang["item.adv."+id+".set_bonus."+str(count)] = line
            count +=1
    ### RARITY
    tag += "'\"\"',"
    rarity = item["core"]["rarity"]
    tag += "'{\"translate\":\"item.adv.rarity\",\"color\":\"gold\",\"italic\":false,\"with\":["
    if rarity == 0: tag +="{\"text\":\"★☆☆☆☆\"}]}'"
    elif rarity == 1: tag += "{\"text\":\"★★☆☆☆\"}]}'"
    elif rarity == 2: tag += "{\"text\":\"★★★☆☆\"}]}'"
    elif rarity == 3: tag += "{\"text\":\"★★★★☆\"}]}'"
    elif rarity == 4: tag += "{\"text\":\"★★★★★\"}]}'"
    elif rarity == 5: tag += "{\"text\":\"★★★★★★\"}]}'"
    tag += ","
    
    ### ATTRIBUTES
    is_dmg_global = global_dmg(attribute_list)
    if("attributes" in item): tag += attr_to_lore(attribute_list,t,is_dmg_global)
    #### PACK
    tag +="'\"\"','{\"translate\":\"pack.adv\",\"color\":\"#de0253\"}'"
    tag += "]"
    ###
    tag += "}"
    return tag

def get_attributes(attributes,type):
    attributelist = []
#### melee
    if "atk_dmg" in attributes and attributes["atk_dmg"] != 0:  attributelist.append( get_attribute(type,"vanilla","attack_damage",attributes["atk_dmg"]))
    if "atk_spd" in attributes and attributes["atk_spd"] != 0:  attributelist.append( get_attribute(type,"vanilla","attack_speed",attributes["atk_spd"]))
#### ranged
    if "ranged_dmg" in attributes and attributes["ranged_dmg"] != 0:  attributelist.append( get_attribute(type,"adv","ranged_damage",attributes["ranged_dmg"]))
    if "fire_spd" in attributes and attributes["fire_spd"] != 0:  attributelist.append( get_attribute(type,"adv","fire_speed",attributes["fire_spd"]))
    if "bullet_spread" in attributes and attributes["bullet_spread"] != 0:  attributelist.append( get_attribute(type,"adv","bullet_spread",attributes["bullet_spread"]))
    if "ammo_conservation" in attributes and attributes["ammo_conservation"] != 0:  attributelist.append( get_attribute(type,"adv","ammo_conservation",attributes["ammo_conservation"]))
#### magic 
    if "magic_dmg" in attributes and attributes["magic_dmg"] != 0:  attributelist.append( get_attribute(type,"adv","magic_damage",attributes["magic_dmg"]))
    if "max_mana" in attributes and attributes["max_mana"] != 0:  attributelist.append( get_attribute(type,"adv","max_mana",attributes["max_mana"]))
    if "mana_regen" in attributes and attributes["mana_regen"] != 0:  attributelist.append( get_attribute(type,"adv","mana_regen",attributes["mana_regen"]))
    if "mana_cost" in attributes and attributes["mana_cost"] != 0:  attributelist.append( get_attribute(type,"adv","mana_cost",attributes["mana_cost"]))
#### turret
    if "turret_dmg" in attributes and attributes["turret_dmg"] != 0:  attributelist.append( get_attribute(type,"adv","turret_damage",attributes["turret_dmg"]))
    if "build_spd" in attributes and attributes["build_spd"] != 0:  attributelist.append( get_attribute(type,"adv","build_speed",attributes["build_spd"]))
    if "life" in attributes and attributes["life"] != 0:  attributelist.append( get_attribute(type,"adv","lifetime",attributes["life"]))
#### passive
    if "armor" in attributes and attributes["armor"] != 0:  attributelist.append( get_attribute(type,"vanilla","armor",attributes["armor"]))
    if "armor_toughness" in attributes and attributes["armor_toughness"] != 0:  attributelist.append( get_attribute(type,"vanilla","armor_toughness",attributes["armor_toughness"]))
    if "max_health" in attributes and attributes["max_health"] != 0:  attributelist.append( get_attribute(type,"vanilla","max_health",attributes["max_health"]))
#### other
    if "mov_spd" in attributes and attributes["mov_spd"] != 0:  attributelist.append( get_attribute(type,"vanilla","movement_speed",attributes["mov_spd"]))
    if "kb_res" in attributes and attributes["kb_res"] != 0:  attributelist.append( get_attribute(type,"vanilla","knockback_resistance",attributes["kb_res"][1]))
    if "luck" in attributes and attributes["luck"] != 0:  attributelist.append( get_attribute(type,"vanilla","luck",attributes["luck"]))

    return attributelist
            
def get_attribute(type,src,name,amount):
    type = t
    display_name = name
    out = get_plus(amount)
    if(src=="vanilla"):
        if(type=="Melee" or type == "Ranged" or type == "Magic" or type == "Turret"): disp = ("'"+(json.dumps({"translate":"attribute.adv.default","color":"dark_green","italic":"false","with":[str(amount),{"translate":"attribute.name.generic."+display_name}]}))+"',")
        else:
            disp = ("'"+(json.dumps({"translate":"attribute.adv.default_armor","color":out[1],"italic":"false","with":[out[0],{"translate":"attribute.name.generic."+display_name}]}))+"',")
        if(name=="attack_speed" and type=="Melee"): attr="{AttributeName:\"generic."+name+"\",Name:\"generic."+name+"\",Amount:"+str((amount-4))+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
        else: attr="{AttributeName:\"generic."+name+"\",Name:\"generic."+name+"\",Amount:"+str(amount)+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
    else:
        attr="{AttributeName:\"adv:"+name+"\",Name:'{\"translate\":\"attribute.adv."+display_name+"\"}',Amount:"+str(amount)+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
        if(type=="Melee" or type == "Ranged" or type == "Magic" or type == "Turret"): disp = ("'"+(json.dumps({"translate":"attribute.adv.default","color":"dark_green","italic":"false","with":[str(amount),{"translate":"attribute.adv."+display_name}]}))+"',")
        else:
            disp = ("'"+(json.dumps({"translate":"attribute.adv.default_armor","color":out[1],"italic":"false","with":[out[0],{"translate":"attribute.adv."+display_name}]}))+"',")
    return (attr,disp.replace("\"false\"","false"),name,amount)

def get_plus(amount):
    if(amount>0): return ("+"+str(amount),"blue")
    else: return (str(amount),"red")

def get_slot(type):
    if(type=="Melee" or type == "Ranged" or type == "Magic" or type == "Turret"): return "\"mainhand\""
    elif type == "Helmet": return "\"head\""
    elif type == "Chestplate": return "\"chest\""
    elif type == "Leggings": return "\"legs\""
    elif type == "Boots": return "\"feet\""
    elif type == "Shield": return "\"offhand\""


def get_rarity(rarity):
    if rarity == 0: return ("Common","white")
    elif rarity == 1: return ("Uncommon","green")
    elif rarity == 2: return ("Rare","aqua")
    elif rarity == 3: return ("Epic","light_purple")
    elif rarity == 4: return ("Legendary","red")
    elif rarity == 5: return ("Mythical","rainbow")

    
def get_type(type):
    global t
    
    if(type=="Helmet" or type=="Chestplate" or type== "Leggings" or type == "Boots"):
        t = type
        type = "Armor"
        return "\"Armor\",ArmorType:"+"\"" +t+"\""
    else:
        t = type
        return "\"" +type +"\""

def attr_to_lore(list,type,is_dmg_global):
    r = "'"
    if(type=="Melee" or type=="Ranged" or type=="Magic" or type=="Turret"):
            r+=('{"translate":"item.modifiers.mainhand","italic":false,"color":"gray"}')
    elif(type=="Helmet"):
            r+=('{"translate":"item.modifiers.head","italic":false,"color":"gray"}')
    elif(type=="Chestplate"):
            r+=('{"translate":"item.modifiers.chest","italic":false,"color":"gray"}')
    elif(type=="Leggings"):
            r+=('{"translate":"item.modifiers.legs","italic":false,"color":"gray"}')
    elif(type=="Boots"):
            r+=('{"translate":"item.modifiers.feet","italic":false,"color":"gray"}')
    elif(type=="Shield"):
            r+=('{"translate":"item.modifiers.offhand","italic":false,"color":"gray"}')
    r+="',"
    
    for attr in list:
        if not is_dmg_global:
            r+=attr[1]
        else:
            if attr[2] != "attack_damage" and attr[2] != "ranged_damage" and attr[2] != "magic_damage" and attr[2] != "turret_damage":
                r+=attr[1]
            elif attr[2] == "attack_damage":
                if(type=="Melee" or type == "Ranged" or type == "Magic" or type == "Turret"):
                    r+= ("'"+(json.dumps({"translate":"attribute.adv.default","color":"dark_green","italic":"false","with":[get_plus(attr[3])[0],{"translate":"attribute.adv.global_damage"}]}))+"',")
                else:
                    r+= ("'"+(json.dumps({"translate":"attribute.adv.default_armor","color":"blue","italic":"false","with":[get_plus(attr[3])[0],{"translate":"attribute.adv.global_damage"}]}))+"',")

    return r