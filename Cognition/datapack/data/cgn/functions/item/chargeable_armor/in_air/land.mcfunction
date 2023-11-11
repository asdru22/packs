scoreboard players reset @s cgn.air_time
scoreboard players reset @s cgn.sneak_time
tag @s remove cgn.charged_armor_jump
tag @s remove cgn.charged_armor_launch

function srn:technical/string_uuid/init

tag @s add cgn.me
execute if entity @s[tag=cgn.charged_armor_jump_attack] run function cgn:item/chargeable_armor/in_air/targets with entity @s
tag @s remove cgn.me

particle crit ~ ~0.1 ~ 0.5 0.1 0.5 0.01 25

playsound cgn:item.chargeable_armor.land master @a[distance=..16] ~ ~ ~

effect clear @s slow_falling
tag @s remove cgn.charged_armor_jump_attack
