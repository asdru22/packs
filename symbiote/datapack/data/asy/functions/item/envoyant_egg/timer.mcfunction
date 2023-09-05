particle minecraft:block redstone_block ~ ~1.5 ~ 0.7 0.7 0.7 0.05 14 normal
scoreboard players add @s asy.use_warped_fungus_on_a_stick 1
execute if score @s asy.use_warped_fungus_on_a_stick matches 100.. run function asy:item/envoyant_egg/convert