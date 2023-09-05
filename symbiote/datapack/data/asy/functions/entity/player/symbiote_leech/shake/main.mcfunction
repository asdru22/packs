execute store result score .current asy.x run data get entity @s Rotation[0] 100
execute store result score .current asy.y run data get entity @s Rotation[1] 100

scoreboard players operation @s asy.x -= .current asy.x
execute if score @s asy.x matches ..0 run scoreboard players operation @s asy.x *= const.-1 asy.data
scoreboard players operation @s asy.y -= .current asy.y
execute if score @s asy.y matches ..0 run scoreboard players operation @s asy.y *= const.-1 asy.data

scoreboard players operation @s asy.x += @s asy.y 
execute if score @s asy.x matches 2000.. run function asy:entity/player/symbiote_leech/shake/shaking

execute store result score @s asy.x run data get entity @s Rotation[0] 100
execute store result score @s asy.y run data get entity @s Rotation[1] 100