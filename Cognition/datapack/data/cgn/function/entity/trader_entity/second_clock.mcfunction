# Second-clocks a living entity with a wandering trader base

effect give @s minecraft:invisibility infinite 0 true
execute if entity @s[tag=cgn.hostile] run function cgn:entity/trader_entity/hostile/second_clock

data modify entity @s DespawnDelay set value 2147483647
data modify entity @s Offers.Recipes set value []
data modify entity @s[nbt=!{NoAI:1b},predicate=cgn:time_check/night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[nbt=!{NoAI:1b},predicate=!cgn:time_check/night,nbt=!{DeathTime:19s}] DeathTime set value 19s
execute if data entity @s[nbt=!{NoAI:1b}] HandItems[0].id run data modify entity @s HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.idle
execute if entity @s[predicate=cgn:random_chance/1_10,tag=!cgn.silent] run function cgn:entity/trader_entity/sounds/ambient
