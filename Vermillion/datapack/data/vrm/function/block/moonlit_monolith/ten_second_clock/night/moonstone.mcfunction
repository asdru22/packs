item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{vrm:{moonstone:\"idle\"}}"}
data merge entity @s {transformation:{translation:[0.0f,0.8f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:15,start_interpolation:0}
tag @s add vrm.moonlit_monolith.moonstone_schedule_night
schedule function vrm:block/moonlit_monolith/ten_second_clock/night/schedule 15t