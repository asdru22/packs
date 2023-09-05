from Classes import *
from Index import *

path = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/loot_tables/item/book"
infile = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/book/recipes.json"
function = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/functions/item/book/recipes.mcfunction"

recipes = []
pages = 1
j = 1
def format(string):
    string = string.replace(" ","_")
    string = string.lower()
    string = string.replace("'s","")
    return string

l = open(infile)
f = json.load(l)

recipeline = ""
for recipe in f["recipes"]:
    type = recipe["type"]
    result = Item(format(recipe["result"]["id"]),recipe["result"]["count"])
    ingredients = []
    for ingredient in recipe["ingredients"]: ingredients.append(Item(format(ingredient["id"]),ingredient["count"]))
    if(j%35==0): pages += 1
    tr = Recipe(result,ingredients,type,pages)
    recipes.append(tr)
    recipeline += tr.functionFile(j)
    j+=1
    print(j)
    tr.createRecipeFile()

r = open(function, "w")
recipeline += "scoreboard players reset @s asd.recipe\nscoreboard players enable @s asd.recipe"
r.write(recipeline)

### 35 ITEMS PER PAGE
index = "{title:\"Entry 1\",author:\"???\",pages:['[\"\","
tag = ""
i = 1
entries = 0
for recipe in recipes:
    if (i%35==0 or i ==1):
        entries += 1
        index+= addToIndex(recipe,entries)
    tag+= recipe.getLine(i)
    i += 1
index += "]','[\"\"," 
index += tag 
index += "]']}"

index = index.replace(",]","]")

index = index.replace(",\"\n,\"]","]")
out = {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"","functions":[{"function":"minecraft:set_nbt","tag":""}]}]}]}
out["pools"][0]["entries"][0]["name"] = "written_book"
out["pools"][0]["entries"][0]["functions"][0]["tag"] = index

f = open(path+"/"+"test.json", "w")
f.write(json.dumps(out, indent=2))