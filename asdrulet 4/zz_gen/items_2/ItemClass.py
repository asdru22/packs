from ModelTemplates import *
import random

class item:
    def __init__(self,name,base,type,rarity,element,durability,levelRequired,sellPrice,unstackable,attackSpeed,arrowSpeed,critChance,critDamage,damage,defense,dodgeChance,health,hpRegen,lifesteal,electricityRegen,maxElectricity,movementSpeed,knockbackResistance,electricityUsed,damageReduction,luck,miningSpeed,abilityCooldown,accessories,extraNBT,lore):
        self.id = idFormat(name)
        self.name = name
        self.base = base[0]
        if(len(base)==2): self.displayColor = base[1] ## Leather Armor Color
        
        if(type=="helmet" or type == "chestplate" or type == "leggings" or type == "boots"):
            self.armorType = type
            self.type = "armor"
        else: self.type = type
        
        self.rarity = rarity
        self.element = element
        self.durability = durability
        self.levelRequired = levelRequired
        self.sellPrice = sellPrice

        if(unstackable): self.unstackable = True
        else: self.unstackable = False

        self.stats = []
        toInt(attackSpeed,self.stats) ##0
        toInt(arrowSpeed,self.stats) ##1
        toInt(critChance,self.stats) ##2
        toInt(critDamage,self.stats) ##3
        toInt(damage,self.stats) ##4
        toInt(defense,self.stats) ##5
        toInt(dodgeChance,self.stats) ##6
        toInt(health,self.stats) ##7
        toInt(hpRegen,self.stats) ##8
        toInt(lifesteal,self.stats) ##9
        toInt(electricityRegen,self.stats) ##10
        toInt(maxElectricity,self.stats) ##11
        toInt(movementSpeed,self.stats) ##12
        toInt(knockbackResistance,self.stats) ##13
        toInt(electricityUsed,self.stats) ##14
        toInt(damageReduction,self.stats) ##15
        toInt(luck,self.stats) ##16
        toInt(miningSpeed,self.stats) ##17
        
        self.abilityCooldown = abilityCooldown
        self.accessories = accessories
        self.extraNBT = extraNBT
        self.lore = lore

    def getRarity(self):
        if(self.rarity=="common"): return "9FBCBB"
        elif(self.rarity=="fine"): return "7BED8D"
        elif(self.rarity=="exceptional"): return "F9EF59"
        elif(self.rarity=="pristine"): return "E33DFF"
        elif(self.rarity=="perfect"): return "FF3A8B"
        elif(self.rarity=="heirloom"): return "00DAC2" 

    def createmodelfiles(self):
        if (self.type == "melee"): modelDefault(self.type,self.id)
        elif (self.type == "ranged" and self.base == "bow"): modelBow(self.type,self.id)
        elif (self.type == "ranged" and self.base == "crossbow"): modelCrossbow(self.type,self.id)
        elif (self.type == "ranged" and self.base == "warped_fungus_on_a_stick"): modelDefault(self.type,self.id)
        elif(self.type=="magic"): modelMagic(self.type,self.id)
        elif(self.base=="shield"): modelShield(self.type,self.id)
        elif(self.base =="leather_chestplate" or self.base == "leather_helmet" or self.base == "leather_boots" or self.base == "leather_leggings"): modelArmor(self.type,self.id)
        elif(self.type == "drill"): modelDefault(self.type,self.id)
        elif(self.type == "material"): modelMaterial(self.type,self.id)
        elif(self.type == "accessory"): modelMaterial(self.type,self.id)


    def createAttributes(self):
        attributes=""
        if(self.stats[0]!='' or self.stats[12]!='' or self.stats[13]!=''):
            slot = ""
            if self.type == "armor":
                if self.armorType == "helmet": slot = "head"
                elif self.armorType == "chestplate": slot = "chest"
                elif self.armorType == "leggings": slot = "legs"
                elif self.armorType == "boots": slot = "feet"
            elif self.type== "melee" or self.type== "ranged" or self.type== "magic" or self.type == "drill": slot = "mainhand"
            elif self.type=="shield": slot = "offhand"

            if self.stats[0]!='': 
                amount = float(self.stats[0])/10
                if(slot=="mainhand"): amount -=4
                attributes+= attributeLine(slot,amount,"attack_speed")
            if self.stats[12]!='': attributes+= attributeLine(slot,str(float((self.stats[12]))/1000),"movement_speed")
            if self.stats[13]!='': 
                if(slot=="mainhand"): attributes+= attributeLine(slot,str(self.stats[13]),"knockback_resistance")
            if self.stats[16]!='': 
                if(slot=="mainhand"): attributes+= attributeLine(slot,str(self.stats[16]),"luck")
        return attributes
        
    def addname(self,lang): lang.append("item.asd."+self.id+"\":\""+self.name+"\"")
            
    def createStats(self):
        loreStats = ""
        if self.stats[4]!='': loreStats +=loreLine("red","damage",self.stats[4])
        if self.stats[17]!='': loreStats +=loreLine("yellow","mining_speed",self.stats[17])
        if self.stats[0]!='': loreStats +=loreLine("yellow","attack_speed",self.stats[0])
        if self.stats[1]!='': loreStats +=loreLine("yellow","arrow_speed",self.stats[1])
        if self.stats[2]!='': loreStats +=loreLine("gold","crit_chance",self.stats[2])
        if self.stats[3]!='': loreStats +=loreLine("gold","crit_damage",self.stats[3])
        if self.stats[9]!='': loreStats +=loreLine("dark_red","lifesteal",self.stats[9])
        if self.stats[7]!='': loreStats +=loreLine("green","health",self.stats[7])
        if self.stats[8]!='': loreStats +=loreLine("green","hp_regen",self.stats[8])
        if self.stats[5]!='': loreStats +=loreLine("green","defense",self.stats[5])
        if self.stats[15]!='': loreStats +=loreLine("green","DamageReduction",self.stats[15])
        if self.stats[11]!='': loreStats +=loreLine("aqua","max_electricity",self.stats[11])
        if self.stats[10]!='': loreStats +=loreLine("aqua","electricity_regen",self.stats[10])
        if self.stats[6]!='': loreStats +=loreLine("white","dodge_chance",self.stats[6])
        if self.stats[13]!='': loreStats +=loreLine("dark_purple","knockback_resistance",self.stats[13])
        if self.stats[12]!='': loreStats +=loreLine("yellow","movement_speed",self.stats[12])
        if self.stats[16]!='': loreStats +=loreLine("dark_green","luck",self.stats[16])
        if self.stats[14]!='': loreStats +=loreLine("aqua","electricity_used",self.stats[14])
        return loreStats
            
def idFormat(id): return id.lower().replace(" ","_").replace("'s","")
    
def toInt(stat,vec):
    if(stat!=''): vec.append(int(stat))
    else: vec.append('')

def attributeLine(slot,amount,attribute):
    return "{AttributeName:\"generic."+attribute+"\", Name : \"generic."+attribute+"\", Amount :" +str(amount)+ ",Operation:0,UUID:[I;"+randStr()+","+randStr()+","+randStr()+","+randStr()+"],Slot:\""+slot+"\"},"

def randStr():
    return str(random.randint(-100000,100000))

def loreLine(color,stat,val): return "'{\"translate\":\"item.asd.lore."+stat+"\",\"italic\":false,\"color\":\"gray\",\"with\":[{\"text\":\"" + str(val) + "\",\"color\":\""+color+"\"}]}',"
