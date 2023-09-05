setblock ~ ~ ~ air
playsound minecraft:entity.elder_guardian.curse block @p ~ ~ ~ 1 0.5
execute on passengers if entity @s[type=block_display] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
tag @s add tfp.kill
tag @s remove tfp.activate
schedule function tfp:block/mystic_bookshelf/activate/kill_schedule 20t