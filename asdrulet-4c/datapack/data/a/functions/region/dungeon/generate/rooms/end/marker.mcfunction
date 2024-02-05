tp @s ~ ~ ~ ~ ~

setblock ~ ~ ~ barrier
tag @s add room

execute store result score @s var run data get entity @s Rotation[0]

execute if score $boss var matches 1 run data modify entity @s data.room set value "end"
execute if score $boss var matches 0 run function a:region/dungeon/generate/rooms/end/boss

execute positioned ~ ~1 ~ run function a:region/dungeon/generate/place with entity @s data