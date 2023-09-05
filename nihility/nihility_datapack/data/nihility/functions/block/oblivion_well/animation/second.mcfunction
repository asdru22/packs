playsound minecraft:block.chain.break block @a[distance=..16]
execute if score @s nihility.data matches 11 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906006
execute if score @s nihility.data matches 10 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906007
execute if score @s nihility.data matches 9 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906008
execute if score @s nihility.data matches 8 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906009
execute if score @s nihility.data matches 7 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906010
execute if score @s nihility.data matches 6 run function nihility:block/oblivion_well/animation/enchant
execute if score @s nihility.data matches 5 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906009
execute if score @s nihility.data matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906008
execute if score @s nihility.data matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906007
execute if score @s nihility.data matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906006
execute if score @s nihility.data matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6906005
execute if score @s nihility.data matches 0 run function nihility:block/oblivion_well/generate/main

scoreboard players remove @s nihility.data 1