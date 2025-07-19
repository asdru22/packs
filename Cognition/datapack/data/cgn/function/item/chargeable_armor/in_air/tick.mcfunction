execute if entity @s[scores={cgn.air_time=5..},predicate=cgn:entity_properties/is_on_ground] run return run function cgn:item/chargeable_armor/in_air/land

scoreboard players add @s cgn.air_time 1

execute if entity @s[predicate=cgn:entity_properties/player_input/sneak_button,tag=!cgn.chargeable_armor.launch,scores={cgn.air_time=15..}] run function cgn:item/chargeable_armor/in_air/launch_player

execute if entity @s[tag=cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/in_air/launch_effect_rng