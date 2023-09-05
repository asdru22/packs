execute if entity @s[scores={asy.symbiote=1..}] run function asy:entity/player/symbiote_leech/20_ticks

execute as @e[type=!vex,type=!#asy:technical,distance=..20,predicate=asy:chance/4] if data entity @s ActiveEffects[{Id:20}] at @s run function asy:entity/symbiote/spawn/main

execute if entity @s[scores={asy.billboard_flip=1..}] run function asy:block/billboard/flip/main