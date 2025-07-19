# Starts a line of sight raycast

tag @s remove cgn.has_line_of_sight
scoreboard players set $distance cgn.dummy 0 
execute anchored eyes facing entity @n[predicate=cgn:entity_properties/hostile_target,distance=..16] eyes run function cgn:entity/trader_entity/hostile/line_of_sight_raycast
execute if entity @s[tag=cgn.has_line_of_sight] run tag @s add cgn.attacking