execute if entity @s[tag=!cgn.projectile.setup] run return run function cgn:entity/projectile/setup {duration:20}

execute store result score $temp cgn.dummy run data get entity @s item.components."minecraft:custom_data".cgn.sc 10

tag @s add cgn.pyroplastic_beam_temp
execute if score $temp cgn.dummy matches 1.. run function cgn:entity/projectile/pyroplastic_beam/raycast
tag @s remove cgn.pyroplastic_beam_temp

execute if score @s cgn.animation_timer matches 13 run return run function cgn:entity/projectile/pyroplastic_beam/anim1 with entity @s item.components."minecraft:custom_data".cgn

execute if score @s cgn.animation_timer matches 8 run return run function cgn:entity/projectile/pyroplastic_beam/anim2 with entity @s item.components."minecraft:custom_data".cgn

execute if score @s cgn.animation_timer matches 3 run return run function cgn:entity/projectile/pyroplastic_beam/anim3 with entity @s item.components."minecraft:custom_data".cgn