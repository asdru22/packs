scoreboard players set $strength delta.api.launch 30000
execute rotated 0 -90 run function delta:api/launch_looking
tag @s add cgn.charged_armor_jump
tag @s add cgn.charged_armor_jump_attack

execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify_armor/init

effect give @s slow_falling 10 2 true

scoreboard players set @s cgn.air_time 1

playsound cgn:item.chargeable_armor.jump master @a[distance=..16]