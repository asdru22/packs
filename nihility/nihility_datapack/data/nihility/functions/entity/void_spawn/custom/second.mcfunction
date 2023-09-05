execute if entity @s[tag=nihility.entity.sculker] run function nihility:entity/sculker/second
execute if entity @s[tag=nihility.entity.dechanter,predicate=!nihility:entity/void_spawn/moving,tag=!nihility.entity.attack_delay] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..3] unless entity @s[scores={nihility.void_score=-2147483648..2147483647}] run function nihility:entity/dechanter/begin_attack

execute if entity @s[tag=!nihility.mob.static] run function nihility:entity/void_spawn/custom/pathfind
execute if entity @s[type=wandering_trader] run data modify entity @s[nbt=!{NoAI:1b}] HandItems[0].tag.fix_milk_bucket set value "Amogus"
execute if entity @s[type=wandering_trader] run data merge entity @s {ActiveEffects:[{Id:2,Amplifier:200,Duration:21401142,ShowParticles:0b},{Id:14,Amplifier:200,Duration:21401142,ShowParticles:0b},{Id:11,Amplifier:200,Duration:1999999,ShowParticles:0b}],Offers:{Recipes:[]}}

execute if predicate nihility:technical/rng/33 run function nihility:entity/void_spawn/custom/idle_sound
tag @s remove epl.mob.attack_delay