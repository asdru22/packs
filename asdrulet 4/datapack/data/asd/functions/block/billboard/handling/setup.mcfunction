tag @s remove asd.setup
execute if score .override asd.d matches 1 if entity @s[type=armor_stand] run function asd:block/billboard/impl/buttons/update_pos
execute unless score .override asd.d matches 1 if entity @s[type=slime] run data merge entity @s {Health:1000,Attributes:[{Name:"minecraft:generic.max_health",Base:1000}]}