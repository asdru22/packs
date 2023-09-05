import json

def gettype(id):
    if id == "bow": return "ranged"
    elif id == "crossbow": return "ranged"
    elif id == "iron_pickaxe": return "melee"
    elif id == "iron_sword": return "melee"
    elif id == "carrot_on_a_stick": return "magic"
    elif id == "warped_fungus_on_a_stick": return "ranged"
    elif id == "shield": return "shield"
    elif id == "recovery_compass": return "accessory"
    elif id == "leather_chestplate": return "armor"
    elif id == "leather_helmet": return "armor"
    elif id == "leather_leggings": return "armor"
    elif id == "leather_boots": return "armor"
    elif id == "ender_eye": return "drill"
    elif id == "beef": return "material"




def createmodelfile(id,items):
    cmd = 0
    overrides = []
    for item in items:
        cmd+=1
        element = {"predicate": {"custom_model_data":cmd},"model": "asd:item/"+gettype(id)+"/"+item+""}
        overrides.append(element)

        if(id=="bow"):
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_0"})
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 0.65},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_1"})
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 0.9},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_2"})

        if(id=="crossbow"):
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_0"})
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1, "pull": 0.58},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_1"})
            overrides.append({"predicate": {"custom_model_data":cmd,"pulling": 1,"pull": 1.0},"model": "asd:item/"+gettype(id)+"/"+item+"_pulling_2"})
            overrides.append({"predicate": {"custom_model_data":cmd, "charged": 1 },"model": "asd:item/"+gettype(id)+"/"+item+"_arrow"})
            overrides.append({"predicate": {"custom_model_data":cmd, "charged": 1 ,"firework": 1},"model": "asd:item/"+gettype(id)+"/"+item+"_firework"})
        if(id=="shield"):
            overrides.append({"predicate": {"custom_model_data":cmd},"model": "asd:item/shield/"+item+""})
            overrides.append({"predicate": {"custom_model_data":cmd,"blocking": 1},"model": "asd:item/shield/"+item+"_blocking"})

    model = {"overrides": [overrides]}
    model = json.dumps(model, indent=0)
    model = model.replace(']\n]',']')
    model = model.replace('[\n[','[')
    model = model.replace('\\"','\"')
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/minecraft/models/item/"+id+".json", "w")
    f.write(model)
    f.close