summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{nihility:-1}}}
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{nihility:-1}}}] run data modify entity @s Item set from storage nihility:storage root.temp.check
data remove storage nihility:storage root.temp.item.tag.Items[0]