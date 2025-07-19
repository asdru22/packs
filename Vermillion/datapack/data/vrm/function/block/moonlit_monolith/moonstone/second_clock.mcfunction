scoreboard players operation #temp_0 vrm.dummy = @s vrm.dummy2
scoreboard players operation #temp_0 vrm.dummy %= #4 vrm.dummy

execute if score #temp_0 vrm.dummy matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:0.0f},translation:[0.0f,0.7f,0.0f]}}
execute if score #temp_0 vrm.dummy matches 1 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:1.57079632679f},translation:[0.0f,0.6f,0.0f]}}
execute if score #temp_0 vrm.dummy matches 2 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:3.141f},translation:[0.0f,0.7f,0.0f]}}
execute if score #temp_0 vrm.dummy matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:4.71238898038f},translation:[0.0f,0.8f,0.0f]}}

scoreboard players add @s vrm.dummy2 1

playsound vrm:block.moonlit_monolith.moonstone_idle block @a[distance=..4]