autoreload = True

from os import walk
import json
from ModelBuild import *
from CreateItem import *
from ItemClass import*
import pandas as pd

class Model:
    def __init__(self):
        id = ""
        items = []
pool = ["iron_sword","iron_pickaxe","bow","crossbow","trident","carrot_on_a_stick","shield","leather_helmet","leather_chestplate","leather_leggings","leather_boots","warped_fungus_on_a_stick","recovery_compass","ender_eye","beef"]
path = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/items/test"
path2 = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/loot_tables/item/"
## Array of all items that can hava custom model data (ids)
cmdIDs= []
for elem in pool:
    id = Model()
    id.id = elem
    id.items = []
    cmdIDs.append(id)
lang = []
inp = {"providers": []}
x = "\u000a"
counter = 0
df = pd.read_excel("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/items_2/Items.xls",na_filter=False)
matrix = df.values

for elem in matrix:
    if(elem[0]!=''):
        temp = item(elem[0],elem[1].split(),elem[2],elem[3],elem[4],elem[5],elem[6],elem[7],elem[8],elem[9],elem[10],elem[11],elem[12],elem[13],elem[14],elem[15],elem[16],elem[17],elem[18],elem[19],elem[20],elem[21],elem[22],elem[23],elem[24],elem[25],elem[26],elem[27],elem[28],elem[29],elem[30].strip().split("\\n"))
        
        unicode =(f'\\u{ord(x) + counter:04x}')
        CreateItem(temp,cmdIDs,lang,inp,unicode)
        counter +=1

## -------- Create Custom model folders
for elem in cmdIDs:
    if elem.items!=[]:
        createmodelfile(elem.id,elem.items)
## -------- Create Custom Font
l = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/font/items.json", "w")
l.write(json.dumps(inp, indent=2).replace("\\\\","\\"))
## -------- Create Lang file
l = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/items/lang/en_us.json", "w")
temp ="{"+json.dumps(lang, indent=0)+"}"
temp = temp.replace('\\"','"')
temp = temp.replace('""','"')
temp = temp.replace('{[','{')
temp = temp.replace(']}','}')
temp = temp.replace("\\\\","\\")
l.write(temp)


### Automatic run

if (autoreload):
    import keyboard
    import time
    keyboard.press_and_release('escape')
    keyboard.press_and_release('t')
    time.sleep(0.2)
    keyboard.write('/reload')
    keyboard.press_and_release('enter')
    keyboard.press_and_release('f3+t')