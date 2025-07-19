data modify storage vrm:temp root.anim set value {transformation:{translation:[0.0f,-0.1f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0f,0f,0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:12,start_interpolation:0}
data modify storage vrm:temp root.anim.transformation.right_rotation set from entity @s transformation.right_rotation
data modify entity @s {} merge from storage vrm:temp root.anim
tag @s remove vrm.entity
tag @s remove vrm.second_clock
tag @s add vrm.moonlit_monolith.moonstone_schedule_day
schedule function vrm:block/moonlit_monolith/ten_second_clock/day/schedule 12t