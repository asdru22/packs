scoreboard players set @s nihility.dash_timer 7
scoreboard players set $strength delta.api.launch 11000
execute rotated ~ 0 run function delta:api/launch_looking
tag @s remove nihility.can_dash
tag @s add nihility.is_dashing
playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 10 1.76