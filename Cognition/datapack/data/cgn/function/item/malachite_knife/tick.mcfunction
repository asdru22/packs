scoreboard players operation #temp cgn.dummy = @s cgn.animation_timer
scoreboard players operation #temp cgn.dummy %= #8 cgn.dummy

execute if score #temp cgn.dummy matches 0 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp cgn.dummy matches 2 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-1.57079632679f}}}
execute if score #temp cgn.dummy matches 4 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-3.141f}}}
execute if score #temp cgn.dummy matches 6 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-4.71238898038f}}}

data modify storage cgn:temp root.malachite_knife set from entity @s item.components."minecraft:custom_data".cgn 

scoreboard players set @s cgn.dummy2 20
function cgn:item/malachite_knife/move_loop