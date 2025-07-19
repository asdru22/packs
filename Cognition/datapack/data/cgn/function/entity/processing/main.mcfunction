tag @s add cgn.spawning_processed

execute if entity @s[type=#cgn:prevent_aggression] run team join smithed.prevent_aggression
execute if entity @s[type=#cgn:deepslate_spawning,predicate=cgn:location_check/deepslate_spawning] run function cgn:entity/processing/spawning