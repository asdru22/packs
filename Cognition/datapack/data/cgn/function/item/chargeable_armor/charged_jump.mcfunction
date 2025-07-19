execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify/use

tag @s add cgn.chargeable_armor.in_air

attribute @s gravity modifier add cgn:chargeable_armor.gravity -0.06 add_value
attribute @s safe_fall_distance modifier add cgn:chargeable_armor.safe_fall_distance 10000 add_value

scoreboard players set @s cgn.air_time 1

scoreboard players set $strength player_motion.api.launch 26000
execute rotated 0 -90 run function player_motion:api/launch_looking