data merge entity @s {Tags:["adv.proj","adv.proj.player","adv.proj.flail","adv.tick"], transformation:{translation:[0f, 0f, 0f], scale:[0.5f, 0.5f, 0.5f], left_rotation:[0.0f, 0.4f, 0.0f, 1.0f], right_rotation:[1f, 0f, 0f, 1.0f]}}
data modify entity @s item set from storage adv:storage root.temp.equipment.Mainhand
scoreboard players set @s adv.s.lifetime 80
scoreboard players operation @s adv.id = $id adv.data
execute at @s rotated as @p run tp @s ~ ~ ~ ~ ~