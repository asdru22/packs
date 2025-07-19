# Finds the player an illager is looking at
scoreboard players add $distance cgn.dummy 1

execute if entity @e[predicate=cgn:entity_properties/hostile_target,distance=..2] run return run tag @s add cgn.has_line_of_sight
execute if entity @s[distance=..16,tag=!cgn.has_line_of_sight] if block ^ ^ ^0.05 #cgn:seethrough positioned ^ ^ ^0.05 run function cgn:entity/trader_entity/hostile/line_of_sight_raycast
