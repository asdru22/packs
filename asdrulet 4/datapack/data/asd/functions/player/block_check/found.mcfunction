scoreboard players set found asd.d 1
scoreboard players set range asd.d 0
execute if entity @s[predicate=!asd:player/sneaking] if entity @s[tag=!asd.player.target_found] run summon villager ~ ~-1 ~ {Silent:1b,Tags:[smithed.entity,smithed.strict,asd.entity,asd.marker.right_click,asd.ignore_id],Invulnerable:1b,NoAI:1b,Age:-23400,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
execute as @e[type=villager,tag=asd.marker.right_click,tag=!asd.v_setup] run function asd:player/block_check/setup
tag @s add asd.player.target_found

execute positioned ~ ~-1 ~ as @e[type=villager,tag=asd.marker.right_click,tag=asd.v_setup,distance=..0.5] at @s run tp @s ~ ~1 ~