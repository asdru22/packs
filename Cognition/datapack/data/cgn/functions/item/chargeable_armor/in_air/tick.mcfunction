scoreboard players add @s cgn.air_time 1
scoreboard players operation #temp cgn.dummy = @s cgn.air_time
scoreboard players operation #temp cgn.dummy %= #5 cgn.dummy
#execute if score #temp cgn.dummy matches 0 run function cgn:item/chargeable_armor/in_air/effect

execute if entity @s[nbt={OnGround:1b},scores={cgn.air_time=5..}] run function cgn:item/chargeable_armor/in_air/land


execute if entity @s[tag=!cgn.charged_armor_launch,scores={cgn.air_time=5..},predicate=cgn:player/sneaking] run function cgn:item/chargeable_armor/in_air/launch_player

execute if entity @s[tag=cgn.charged_armor_launch] run function cgn:item/chargeable_armor/in_air/launch_effect_rng