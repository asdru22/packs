import json
path2 = "C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/loot_tables/item/"

def fillList(item,list,id):
    for elem in list:
        temp = elem.id
        if item == temp:
            elem.items.append(id)
            break
    return len(elem.items)

def CreateTag(item,cmdIDs,lang):
    tag = ""
    item.addname(lang) ## adds translation to lang array
    tag += "CustomModelData:"+str(fillList(item.base,cmdIDs,item.id))+",HideFlags:127,Unbreakable:1b,base:{"
    tag += "ID:\""+item.id+"\","
    tag += "Type:\""+item.type+"\""
    if(item.type=="armor"): tag += ",Armor:\""+item.armorType+"\""
    tag += ",Rarity:\""+ item.rarity+"\","
    name="'{\"translate\":\"item.asd."+item.id+"\",\"italic\":false,\"color\":\"#"+item.getRarity()+"\"}'"
    tag += "Name:"+name

    if(item.element!=''): tag += ",Element:\""+item.element+"\""
    if(item.durability!=''):tag += ",Durability:{max:"+ str(item.durability)+"}"
    if(item.levelRequired!=''):tag += ",LevelRequired:"+ str(item.levelRequired)
    if(item.sellPrice!=''):tag += ",SellPrice:"+ str(item.sellPrice)
    if(item.abilityCooldown!=''):tag += ",AbilityCooldown:"+ str(item.abilityCooldown)

    tag += ",Stats:{"

    if(item.stats[0]!=''): tag+= "AttackSpeed:"+str(item.stats[0])+","
    if(item.stats[1]!=''): tag+= "ArrowSpeed:"+str(item.stats[1])+","
    if(item.stats[2]!=''): tag+= "CritChance:"+str(item.stats[2])+","
    if(item.stats[3]!=''): tag+= "CritDamage:"+str(item.stats[3])+","
    if(item.stats[4]!=''): tag+= "Damage:"+str(item.stats[4])+","
    if(item.stats[5]!=''): tag+= "Defense:"+str(item.stats[5])+","
    if(item.stats[6]!=''): tag+= "DodgeChance:"+str(item.stats[6])+","
    if(item.stats[7]!=''): tag+= "Health:"+str(item.stats[7])+","
    if(item.stats[8]!=''): tag+= "HpRegen:"+str(item.stats[8])+","
    if(item.stats[9]!=''): tag+= "Lifesteal:"+str(item.stats[9])+","
    if(item.stats[10]!=''): tag+= "ElectricityRegen:"+str(item.stats[10])+","
    if(item.stats[11]!=''): tag+= "MaxElectricity:"+str(item.stats[11])+","
    if(item.stats[12]!=''): tag+= "MovementSpeed:"+str(item.stats[12])+","
    if(item.stats[13]!=''): tag+= "KnockbackResistance:"+str(item.stats[13])+","
    if(item.stats[14]!=''): tag+= "ElectricityUsed:"+str(item.stats[14])+","
    if(item.stats[15]!=''): tag+= "DamageReduction:"+str(item.stats[15])+","
    if(item.stats[16]!=''): tag+= "Luck:"+str(item.stats[16])
    if(item.stats[17]!=''): tag+= "MiningSpeed:"+str(item.stats[17])

    tag +="}"
    if(item.lore!=['']):
        tag+=",Ability:["
        abilityLines = ""
        i = 0
        for line in item.lore:
            i+=1
            abilityLines+="'{\"translate\":\"item.asd.lore."+item.id+".ability."+str(i)+"\",\"italic\":false,\"color\":\"white\"}',"
            lang.append("item.asd.lore."+item.id+".ability."+str(i)+"\":\""+line+"\"")
        tag+=abilityLines
        tag+="]"
    ##### Item VISUALS
    tag += "},display:{Name:"+name+",Lore:["
    tag+="'{\"translate\":\"item.asd.lore."+item.type+"\",\"italic\":false,\"color\":\"dark_gray\"}','\"\"',"
    
    tag+=item.createStats()
    
    if(item.lore!=['']):
        tag+="'\"\"',"
        tag += abilityLines

    if(item.abilityCooldown!=''): tag+= "'{\"translate\":\"item.asd.lore.ability.cooldown\",\"italic\":false,\"color\":\"gray\",\"with\":[{\"text\":\""+ str(item.abilityCooldown) + "\",\"color\":\"gold\"}]}',"

    if(item.type!="material"): tag+= "'\"\"','{\"translate\":\"item.asd.lore.LevelRequired_SellPrice\",\"italic\":false,\"color\":\"gray\",\"with\":[{\"text\":\"" + str(item.levelRequired) + "\",\"color\":\"blue\"},{\"text\":\"" + str(item.sellPrice) + "\",\"color\":\"white\"}]}'"

    tag+="]"
    if hasattr(item,"displayColor"): tag+= ",color:"+item.displayColor

    tag += "}"

    tag+=",AttributeModifiers:["+item.createAttributes()+"]"

    if(item.extraNBT!=''): tag+=","+item.extraNBT

    tag = tag.replace(",}","}")
    tag = tag.replace(",]","]")
    tag = tag.replace("'\"\"','\"\"'","'\"\"'")


    return "{" + tag + "}"

def CreateItem(item,cmdIDs,lang,inp,unicode):
    item.createmodelfiles()
    out = {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"","functions":[{"function":"minecraft:set_nbt","tag":""}]}]}]}
    out["pools"][0]["entries"][0]["name"] = item.base
    out["pools"][0]["entries"][0]["functions"][0]["tag"] = CreateTag(item,cmdIDs,lang)
    if(item.unstackable): out["pools"][0]["entries"][0]["functions"].append({"function": "minecraft:set_attributes","modifiers": [{"attribute": "minecraft:generic.luck","name": "","amount": 0,"operation": "addition","slot": "head"}]})
    f = open(path2+item.type+"/"+item.id+".json", "w")
    f.write(json.dumps(out, indent=2))
    walk = "asd:item/"+item.type+"/"+item.id+".png"
    inp["providers"].append({"type":"bitmap","file":walk,"ascent":12,"height":16,"chars":[unicode]})
    lang.append("item.asd.gui."+item.id+"\":\""+unicode+"\"")