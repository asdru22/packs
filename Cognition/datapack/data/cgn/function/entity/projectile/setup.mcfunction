$scoreboard players set @s cgn.animation_timer $(duration)
tag @s add cgn.projectile.setup
data modify entity @s item.components."minecraft:custom_data".cgn.sc set from entity @s transformation.scale[2]
data modify entity @s item.components."minecraft:custom_data".cgn.tr set from entity @s transformation.translation[2]