scoreboard players operation #temp cgn.dummy = @s cgn.animation_timer
scoreboard players operation #temp cgn.dummy %= #8 cgn.dummy
scoreboard players set $recoil cgn.dummy 0 
execute if score #temp cgn.dummy matches 0 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp cgn.dummy matches 2 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-1.57079632679f}}}
execute if score #temp cgn.dummy matches 4 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-3.141f}}}
execute if score #temp cgn.dummy matches 6 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-4.71238898038f}}}

execute if score #temp cgn.dummy matches 0 run playsound cgn:item.double_edged_sword.swoosh master @a[distance=..16] ~ ~ ~ 0.5 1.5

data modify storage cgn:temp root.double_edged_sword set from entity @s item.components."minecraft:custom_data".cgn 

execute if score @s[tag=!cgn.double_edged_sword.returning] cgn.animation_timer matches ..170 run function cgn:item/double_edged_sword/bounce/init

scoreboard players set @s cgn.dummy2 20
function cgn:item/double_edged_sword/move_loop

execute if score @s cgn.animation_timer matches ..0 run function cgn:item/double_edged_sword/drop/make_item