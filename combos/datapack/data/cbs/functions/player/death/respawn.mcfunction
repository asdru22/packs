tag @s remove cbs.death_schedule
effect give @s minecraft:saturation infinite 10 true
effect give @s minecraft:mining_fatigue infinite 250 true
effect give @s night_vision infinite 10 true

attribute @s minecraft:generic.entity_interaction_range base set 0.1
attribute @s minecraft:generic.block_interaction_range base set 1
attribute @s minecraft:generic.knockback_resistance base set 1

attribute @s minecraft:generic.attack_speed base set 1024

item replace entity @s enderchest.0 with stone{cbs:{effects:[]}}
data remove storage cbs:storage root.temp.prefix
execute store result storage cbs:storage root.temp.prefix.id int 1 run scoreboard players get @s cbs.id
function cbs:display/effects/no_effects with storage cbs:storage root.temp.prefix