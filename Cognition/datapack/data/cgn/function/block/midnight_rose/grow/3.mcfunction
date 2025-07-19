execute on passengers run data modify entity @s item.components."minecraft:custom_model_data" set value 4
data modify entity @s height set value 0.7f
tag @s add cgn.10_seconds

execute on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.2625f,0.0f],scale:[1.0f,1.0f,1.0f]}}