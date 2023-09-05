execute store result score .myX asd.d run data get entity @s Pos[0] 100
execute store result score .myY asd.d run data get entity @s Pos[1] 100
execute store result score .myZ asd.d run data get entity @s Pos[2] 100
scoreboard players remove .myX asd.d 50
scoreboard players operation .myZ asd.d += .x asd.d
scoreboard players operation .myY asd.d += .y asd.d
execute store result entity @s Pos[0] double 0.01 run scoreboard players get .myX asd.d
execute store result entity @s Pos[1] double 0.01 run scoreboard players get .myY asd.d
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .myZ asd.d
execute at @s run tp @s ~ ~ ~