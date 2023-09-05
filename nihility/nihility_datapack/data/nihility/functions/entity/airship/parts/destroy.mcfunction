execute if entity @s[type=armor_stand] run loot spawn ~ ~ ~ loot nihility:item/airship
function nihility:entity/airship/parts/remove
kill @e[type=item,nbt={Item:{id:"minecraft:mangrove_chest_boat"}},sort=nearest,limit=1]