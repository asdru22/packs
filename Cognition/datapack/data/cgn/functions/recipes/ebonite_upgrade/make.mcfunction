$loot replace block ~ ~ ~ container.16 loot cgn:items/ebonite_$(id)

data remove storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}].tag.cgn
data remove storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}].tag.Enchantments
data remove storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}].tag.display.Lore
data modify block ~ ~ ~ Items[{Slot:16b}].tag merge from storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}].tag

tellraw @p {"nbt":"Items[{Slot:16b}]","block":"~ ~ ~"}