tag @s add asy.open_display
execute as @e[type=#asy:billboard,tag=asy.display] if score @s asy.id = .temp asy.data run function asy:block/billboard/impl/buttons/kill
execute as @e[type=marker,tag=asy.billboard.center] if score @s asy.id = .temp asy.data at @s run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["asy.billboard","asy.billboard.display","asy.setup"],ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}

execute as @e[type=armor_stand,tag=asy.setup,tag=asy.billboard.display] run function asy:block/billboard/impl/clicking/display_setup