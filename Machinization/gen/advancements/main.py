from functions import *
override = True

advancements = open(path+"advancements.json")
recipes = open(root+"gen/pondering_table/recipes.json")

advancements = json.load(advancements)
recipes = json.load(recipes)

for advancement in advancements["advancements"]:
    if checkfile(path2+advancement["item"]["name"]+".json",override):
        new_advancement(advancement,recipes)
        print("creating "+advancement["item"]["name"]+".json")