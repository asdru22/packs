import json
import png
import os.path

def checkfile(width,height,type,name,path):
    if not(os.path.isfile(path)):
        createimage(width,height,type,name,path) 

def createimage(width,height,type,name,path):
    img = []
    for y in range(height):
        row = ()
        for x in range(width):
            row = row + (x, 0, y)
        img.append(row)
    with open(path, "wb") as f:
        w = png.Writer(width, height, greyscale=False)
        w.write(f, img)

def modelMaterial(type,name):
    write = {"parent":"item/generated","textures": {"layer0": "asd:item/"+type+"/"+name+""}}
    
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

def modelDefault(type,name):
    write = {"parent":"item/handheld","textures": {"layer0": "asd:item/"+type+"/"+name+""}}

    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

def modelMagic(type,name):
    write = {"parent":"item/handheld_rod","textures": {"layer0": "asd:item/"+type+"/"+name+""}}

    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

def modelBow(type,name):
    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+""},"display":{"thirdperson_righthand":{"rotation":[-80,260,-40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-80,-280,40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[0,-90,25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[0,90,-25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}

    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_0"},"display":{"thirdperson_righthand":{"rotation":[-80,260,-40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-80,-280,40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[0,-90,25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[0,90,-25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_0.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_0.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_1"},"display":{"thirdperson_righthand":{"rotation":[-80,260,-40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-80,-280,40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[0,-90,25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[0,90,-25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_1.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_1.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_2"},"display":{"thirdperson_righthand":{"rotation":[-80,260,-40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"thirdperson_lefthand":{"rotation":[-80,-280,40],"translation":[-1,-2,2.5],"scale":[0.9,0.9,0.9]},"firstperson_righthand":{"rotation":[0,-90,25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]},"firstperson_lefthand":{"rotation":[0,90,-25],"translation":[1.13,3.2,1.13],"scale":[0.68,0.68,0.68]}}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_2.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_2.png")

def modelCrossbow(type,name):
    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+""}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_0"}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_0.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_0.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_1"}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_1.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_1.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_pulling_2"}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_pulling_2.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_pulling_2.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_arrow"}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_arrow.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_arrow.png")

    write = {"parent":"item/generated","textures":{"layer0": "asd:item/"+type+"/"+name+"_firework"}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+"_firework.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_firework.png")
    
def modelShield(type,name):
    write = {"parent": "asd:item/shield","textures": {"1": "asd:item/shield/"+name+""}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/shield/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(64,64,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")

    write = {"parent": "asd:item/shield_blocking","textures": {"1": "asd:item/shield/"+name+""}}
    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/shield/"+name+"_blocking.json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(64,64,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+"_blocking.png")

def modelArmor(type,name):
    write = {"parent": "item/generated","textures":{"layer0":"asd:gui/transparent","layer1":"asd:item/"+type+"/"+name+""}}

    f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/item/"+type+"/"+name+".json", "w")
    f.write(json.dumps(write, indent=2))
    f.close()
    checkfile(16,16,type,name,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/item/"+type+"/"+name+".png")