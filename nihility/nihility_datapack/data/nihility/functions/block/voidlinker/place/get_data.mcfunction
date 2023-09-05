data modify storage nihility:storage root.temp.data set from entity @s Item
execute as @e[type=minecraft:end_crystal,tag=nihility.voidlinker_crystal,sort=nearest,limit=1] at @s run function nihility:block/voidlinker/place/crystal_anim
kill @s