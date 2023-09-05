execute store result score .myX nihility.data run data get entity @s Pos[0] 100
execute store result score .myY nihility.data run data get entity @s Pos[1] 100
execute store result score .myZ nihility.data run data get entity @s Pos[2] 100
scoreboard players operation .myX nihility.data += .x nihility.data
scoreboard players add .myY nihility.data 100
scoreboard players operation .myZ nihility.data += .z nihility.data
execute store result entity @s Pos[0] double 0.01 run scoreboard players get .myX nihility.data
execute store result entity @s Pos[1] double 0.01 run scoreboard players get .myY nihility.data
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .myZ nihility.data

execute at @s run tp @s ~ ~ ~