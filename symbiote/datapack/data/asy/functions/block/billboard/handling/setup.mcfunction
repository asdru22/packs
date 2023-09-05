tag @s remove asy.setup
scoreboard players operation @s asy.id = .temp asy.data
execute if score .override asy.data matches 1 if entity @s[type=armor_stand] run function asy:block/billboard/impl/buttons/update_pos
execute unless score .override asy.data matches 1 if entity @s[type=slime] run data merge entity @s {Health:1000,Attributes:[{Name:"minecraft:generic.max_health",Base:1000}]}