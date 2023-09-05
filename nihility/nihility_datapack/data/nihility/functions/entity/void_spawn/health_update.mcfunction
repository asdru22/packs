execute store result score max_hp nihility.data run data get entity @s HandItems[0].tag.nihility.health.max
scoreboard players operation hp nihility.data *= 100 nihility.data
scoreboard players operation hp nihility.data /= max_hp nihility.data

function nihility:entity/void_spawn/values

item modify entity @s weapon.mainhand nihility:void_mob_hp

execute if entity @s[tag=nihility.entity.trader_AI] run data modify entity @s ArmorItems[3].tag.nihility.health set from entity @s HandItems[0].tag.nihility.health


#data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
execute if score hp nihility.data matches ..0 run function nihility:entity/void_spawn/death