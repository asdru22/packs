import json
class Recipe:
    def __init__(self,result,ingredients,iType,page):
        self.result = result
        self.ingredients = ingredients
        self.iType = iType
        self.page = page
    
    def getResult(self):
        return self.result.getID()
        
    def functionFile(self,i):
        return "execute if score @s asd.recipe matches " + str(i)+ " run function asd:recipes/"+ self.getResult()+"_check\n"

    def getType(self):
        return self.iType
        
    def toString(self):
        r = "Result: " + self.result.toString()+"=\nIngredients: "
        for item in self.ingredients:
            r+=item.toString()+" + "
        return r[:-3]
    
    def getLine(self,i):
        r = itemString(self.result,self.ingredients,i)
        if(i%5==0 and i%35!=0):r+="\"\n\n\","
        elif(i%35==0): r+="]','["
        return r
    def createRecipeFile(self):
        r = ""
        c = 0
        cond = ""
        clear = ""
        for ingredient in self.ingredients:
            clear += "clear @s #asd:items{base:{ID:\"" + ingredient.getID() + "\"}} "+ ingredient.getCount() + "\n"
            r += "execute store result score d." + str(c) + " asd.d run clear @s #asd:items{base:{ID:\"" + ingredient.getID() + "\"}} 0\n"
            cond += "if score d."+str(c)+" asd.d matches " + ingredient.getCount() + ".. "
            c += 1
        r += "execute " + cond + "run function asd:recipes/"+self.result.getID()+"_craft"
        f = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/functions/recipes/"+self.result.getID()+ "_check.mcfunction", "w")
        f.write(r)
        clear += "loot give @s loot asd:item/"+self.getType()+ "/" + self.getResult()
        h = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/functions/recipes/"+self.result.getID()+ "_craft.mcfunction", "w")
        h.write(clear)
                        
class Item:
    def __init__(self,id,count):
        self.count = count
        self.id = id
        
    def toString(self):
        return str(self.count)+"x "+self.id
    
    def getCount(self):
        return str(self.count)
    
    def getID(self):
        return self.id
    
def itemString(item,ingredients,i):
    r = ""
    if item.getCount() != "1": r+= "{\"text\":\""+item.getCount()+"x\",\"color\":\"white\",\"font\":\"default\"},"
    r+= "{\"translate\":\"item.asd.gui."+item.getID()+"\",\"color\":\"white\",\"font\":\"asd:items\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger asd.recipe set "+str(i)+"\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":["+getLines(ingredients)+"]}},\" \","
    return r

def getIngredient(ingredient):
    r =""
    if ingredient.getCount() != "1":
        r+= "{\"text\":\""+ingredient.getCount()+"x\",\"color\":\"white\",\"font\":\"default\"},"
    r+= "{\"translate\":\"item.asd.gui."+ingredient.getID()+"\",\"color\":\"white\",\"font\":\"asd:items\"},"
    return r
    

def getLines(ingredients):
    r = ""
    c = 1
    for ingredient in ingredients:
        r+= getIngredient(ingredient)
        if c != len(ingredients): r+= "{\"text\":\"+ \",\"color\":\"white\",\"font\":\"default\"},"
        c+=1
    return r