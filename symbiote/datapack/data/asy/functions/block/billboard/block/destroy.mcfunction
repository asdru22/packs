execute if entity @s[tag=asy.billboard.place] run function asy:block/billboard/place/remove
kill @e[type=item,nbt={Item:{id:"minecraft:furnace"}}]
loot spawn ~ ~ ~ loot asy:block/billboard
kill @s