data modify storage haywire:temp root.anim set value {transformation:{translation:[0.0f,-0.1f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0f,0f,0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:12,start_interpolation:0}
data modify storage haywire:temp root.anim.transformation.right_rotation set from entity @s transformation.right_rotation
data modify entity @s {} merge from storage haywire:temp root.anim
tag @s remove haywire.entity
tag @s remove haywire.second_clock
tag @s add haywire.moonlit_monolith.moonstone_schedule_day
schedule function haywire:block/moonlit_monolith/ten_second_clock/day/schedule 12t