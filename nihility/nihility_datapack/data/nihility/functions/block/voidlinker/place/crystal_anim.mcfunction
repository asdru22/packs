data modify entity @s BeamTarget.X set from entity @s Pos[0]
data modify entity @s BeamTarget.Z set from entity @s Pos[2]
tag @s add nihility.crystal_anim
execute store result score temp2 nihility.data run data get entity @s Pos[1] 10
scoreboard players add temp2 nihility.data 1040

execute store result entity @s BeamTarget.Y int 0.1 run scoreboard players get temp2 nihility.data
scoreboard players operation temp4 nihility.data = @s nihility.id
execute as @e[type=creeper,scores={nihility.id=1..}] if score @s nihility.id = temp4 nihility.data at @s run function nihility:block/battery/unlink
scoreboard players operation temp3 nihility.data = @s nihility.id2

summon marker ~ ~ ~ {Tags:["nihility.void_score_marker","nihility.entity"]}
execute as @e[type=marker,tag=nihility.void_score_marker,tag=!nihility.setup] at @s run function nihility:block/voidlinker/anim/setup