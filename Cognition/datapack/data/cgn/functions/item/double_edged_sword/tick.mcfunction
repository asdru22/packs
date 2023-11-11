scoreboard players operation #temp cgn.dummy = @s cgn.dummy
scoreboard players operation #temp cgn.dummy %= #8 cgn.dummy

execute if score #temp cgn.dummy matches 0 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp cgn.dummy matches 2 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:1.57079632679f}}}
execute if score #temp cgn.dummy matches 4 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:3.141f}}}
execute if score #temp cgn.dummy matches 6 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:4.71238898038f}}}

execute if score #temp cgn.dummy matches 0 run playsound cgn:item.double_edged_sword.swoosh master @a[distance=..16] ~ ~ ~ 0.5 1.5

scoreboard players add @s cgn.dummy 1

tag @s add cgn.me

execute if entity @s[tag=!cgn.double_edged_sword.return] run function cgn:item/double_edged_sword/move

execute if entity @s[predicate=cgn:entity/double_edged_sword/break] run function cgn:item/double_edged_sword/drop/item

execute if entity @s[predicate=cgn:entity/double_edged_sword/go_to_player] anchored eyes run function cgn:item/double_edged_sword/track_owner with entity @s item.tag.cgn

scoreboard players operation #temp cgn.dummy = @s srn.id
scoreboard players reset #kill cgn.dummy

execute as @e[type=!#srn:inanimate,predicate=cgn:entity/double_edged_sword/can_hit,distance=..10,dx=0] positioned ~-0.6 ~-0.8 ~-0.6 if entity @s[dx=0] run function cgn:item/double_edged_sword/hit/main

execute if score @s cgn.dummy matches 5.. as @a[gamemode=!spectator,distance=..5,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] if score @s srn.id = #temp cgn.dummy run function cgn:item/double_edged_sword/drop/find_owner

execute if score #kill cgn.dummy matches 1 run function cgn:item/double_edged_sword/drop/at_owner

execute if entity @s[tag=cgn.double_edged_sword.fire_aspect] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 2
execute if entity @s[tag=cgn.double_edged_sword.charged] run function cgn:item/double_edged_sword/effects/lightning_init

tag @s remove cgn.me
