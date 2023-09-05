execute store result score .myX asy.data run data get entity @s Pos[0] 100
execute store result score .myY asy.data run data get entity @s Pos[1] 100
execute store result score .myZ asy.data run data get entity @s Pos[2] 100
scoreboard players remove .myX asy.data 50
scoreboard players operation .myZ asy.data += .x asy.data
scoreboard players operation .myY asy.data += .y asy.data
execute store result entity @s Pos[0] double 0.01 run scoreboard players get .myX asy.data
execute store result entity @s Pos[1] double 0.01 run scoreboard players get .myY asy.data
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .myZ asy.data
execute at @s run tp @s ~ ~ ~