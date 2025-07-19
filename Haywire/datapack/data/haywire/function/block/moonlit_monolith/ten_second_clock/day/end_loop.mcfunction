item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{haywire:{moonstone:\"hidden\"}}"}
scoreboard players reset @s haywire.dummy2
data merge entity @s {transformation:{translation:[0.0f,-0.1f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:1,start_interpolation:0}