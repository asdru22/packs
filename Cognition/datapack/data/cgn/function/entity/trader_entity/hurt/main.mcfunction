# Creates hurt color and noises

execute if entity @s[nbt={HurtTime:9s}] run function cgn:entity/trader_entity/hurt/9s
execute store result score @s cgn.dummy run data get entity @s HandItems[0].components."minecraft:custom_model_data"
execute store result entity @s HandItems[0].components."minecraft:custom_model_data" int 1 run scoreboard players add @s cgn.dummy 1

execute if entity @s[tag=cgn.trader_entity.no_head] run return 0
execute store result score @s cgn.dummy run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"
execute store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add @s cgn.dummy 1
