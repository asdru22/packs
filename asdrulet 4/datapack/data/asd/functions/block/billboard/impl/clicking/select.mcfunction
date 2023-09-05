scoreboard players set billboard.open_display asd.d 1
execute as @e[type=#asd:billboard,tag=asd.display] run function asd:block/billboard/impl/buttons/kill
execute as @e[type=marker,tag=asd.billboard.center] at @s run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["asd.billboard","asd.billboard.display","asd.setup"],ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}

execute as @e[type=armor_stand,tag=asd.setup,tag=asd.billboard.display] run function asd:block/billboard/impl/clicking/display_setup