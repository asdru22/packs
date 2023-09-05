data merge entity @s {Tags:["adv.proj","adv.proj.player","adv.proj.katana","adv.tick"],item:{id:"minecraft:iron_sword",Count:1b}, transformation:{translation:[0f, 0f, 0f], scale:[0.5f, 0.5f, 0.5f], left_rotation:[0.0f, 0.4f, 0.0f, 1.0f], right_rotation:[1f, 0f, 0f, 1.0f]}}

execute store result entity @s item.tag.adv.damage int 1 run scoreboard players get $damage adv.data
scoreboard players set @s adv.s.lifetime 40

execute at @s rotated as @p run tp @s ~ ~ ~ ~ ~