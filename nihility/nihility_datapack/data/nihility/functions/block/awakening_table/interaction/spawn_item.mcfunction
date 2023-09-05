scoreboard players set temp2 nihility.data 1
execute at @s run summon item ~ ~ ~ {PickupDelay:1s,Item:{id:"minecraft:stone",Count:1b,tag:{nihility:{temp:-1}}}}
execute as @e[type=item,nbt={Item:{tag:{nihility:{temp:-1}}}}] run data modify entity @s Item set from storage nihility:storage root.temp.data