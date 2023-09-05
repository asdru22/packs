import json
import os
import png

items = open("inp.json","r")
items = json.load(items)
cmd = 880000
root = "C:/Users/Ale/Documents/GitHub/Machinization/"
path = root+"resourcepack/assets/mach/models/item/"
path2 = root+"resourcepack/assets/mach/textures/item/"
path3 = root+"resourcepack/assets/minecraft/models/item/recovery_compass.json"
path4 = root+"datapack/data/mach/loot_tables/item/"

recovery_compass = open(path3,"w")
model = {"parent":"item/generated","textures":{"layer0":"item/recovery_compass_16"},"overrides":[{"predicate":{"angle":0.000000},"model":"item/recovery_compass"},{"predicate":{"angle":0.015625},"model":"item/recovery_compass_17"},{"predicate":{"angle":0.046875},"model":"item/recovery_compass_18"},{"predicate":{"angle":0.078125},"model":"item/recovery_compass_19"},{"predicate":{"angle":0.109375},"model":"item/recovery_compass_20"},{"predicate":{"angle":0.140625},"model":"item/recovery_compass_21"},{"predicate":{"angle":0.171875},"model":"item/recovery_compass_22"},{"predicate":{"angle":0.203125},"model":"item/recovery_compass_23"},{"predicate":{"angle":0.234375},"model":"item/recovery_compass_24"},{"predicate":{"angle":0.265625},"model":"item/recovery_compass_25"},{"predicate":{"angle":0.296875},"model":"item/recovery_compass_26"},{"predicate":{"angle":0.328125},"model":"item/recovery_compass_27"},{"predicate":{"angle":0.359375},"model":"item/recovery_compass_28"},{"predicate":{"angle":0.390625},"model":"item/recovery_compass_29"},{"predicate":{"angle":0.421875},"model":"item/recovery_compass_30"},{"predicate":{"angle":0.453125},"model":"item/recovery_compass_31"},{"predicate":{"angle":0.484375},"model":"item/recovery_compass_00"},{"predicate":{"angle":0.515625},"model":"item/recovery_compass_01"},{"predicate":{"angle":0.546875},"model":"item/recovery_compass_02"},{"predicate":{"angle":0.578125},"model":"item/recovery_compass_03"},{"predicate":{"angle":0.609375},"model":"item/recovery_compass_04"},{"predicate":{"angle":0.640625},"model":"item/recovery_compass_05"},{"predicate":{"angle":0.671875},"model":"item/recovery_compass_06"},{"predicate":{"angle":0.703125},"model":"item/recovery_compass_07"},{"predicate":{"angle":0.734375},"model":"item/recovery_compass_08"},{"predicate":{"angle":0.765625},"model":"item/recovery_compass_09"},{"predicate":{"angle":0.796875},"model":"item/recovery_compass_10"},{"predicate":{"angle":0.828125},"model":"item/recovery_compass_11"},{"predicate":{"angle":0.859375},"model":"item/recovery_compass_12"},{"predicate":{"angle":0.890625},"model":"item/recovery_compass_13"},{"predicate":{"angle":0.921875},"model":"item/recovery_compass_14"},{"predicate":{"angle":0.953125},"model":"item/recovery_compass_15"},{"predicate":{"angle":0.984375},"model":"item/recovery_compass"}]}

def loot_table(item,cmd):
    return {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:recovery_compass","functions":[{"function":"minecraft:set_nbt","tag":"{CustomModelData:"+str(cmd)+",smithed:{id:\"mach:"+item+"\"},display:{Name:'{\"translate\":\"item.mach."+item+"\",\"italic\":false}'}}"},{"function":"minecraft:set_lore","lore":[{"translate":"pack.mach","color":"#8CFFDD","italic":True}]}]}]}]}

def checkfile(item,path):
    return os.path.exists(path)

def createimage(width,height,path):
    img = []
    for y in range(height):
        row = ()
        for x in range(width):
            row = row + (x, 0, y)
        img.append(row)
    with open(path, "wb") as f:
        w = png.Writer(width, height, greyscale=False)
        w.write(f, img)

for item in items["items"]:
    item = item["id"]
    model["overrides"].append({"predicate": {"custom_model_data": cmd},"model": "mach:item/"+item})
    if(not checkfile(item,path+item+".json")):
        modelfile = open(path+item+".json", "w")
        modelfile.write(json.dumps({"parent":"item/generated","textures":{"layer0":"mach:item/"+item}}, indent=2))
        modelfile.close()
        print(">> created model "+item+".json")
    if(not checkfile(item,path2+item+".png")):
        createimage(16,16,path2+item+".png")
        print(">> created "+item+".png")
    if(not checkfile(item,path4+item+".json")):
        loottable = open(path4+item+".json", "w")
        loottable.write(json.dumps(loot_table(item,cmd), indent=2).replace("\"true\"","true"))
        loottable.close()
        print(">> created loot table "+item+".json")

                 
    cmd +=1
    
recovery_compass.write(json.dumps(model, indent=2))