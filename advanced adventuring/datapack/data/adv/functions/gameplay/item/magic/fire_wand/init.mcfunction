data merge entity @s {Tags:["adv.proj","adv.proj.player","adv.proj.fire_wand","adv.tick"],item:{id:"minecraft:fire_charge",Count:1b},billboard:"center"}
execute store result entity @s item.tag.adv.damage int 1 run scoreboard players get $damage adv.data
scoreboard players set @s adv.s.lifetime 40

execute at @s rotated as @p run tp @s ~ ~ ~ ~ ~