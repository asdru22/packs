scoreboard players set .cmd asy.data 6901000
execute if predicate asy:chance/20 if score @s asy.symbiote_id matches 1 run scoreboard players add .cmd asy.data 1
scoreboard players operation .cmd asy.data += @s asy.symbiote_id
execute anchored eyes run summon vex ^ ^ ^0.5 {Tags:["asy.dead_symbiote","asy.setup"],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16593715,CustomModelData:6901000}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}]}
execute as @e[type=vex,tag=asy.dead_symbiote,tag=asy.setup] run function asy:entity/player/symbiote_leech/shake/dead