tp @s ~ ~ ~ ~ ~

setblock ~ ~ ~ lodestone
tag @s add room

execute store result score @s var run data get entity @s Rotation[0]
$data modify entity @s data.room set value "$(room)"
execute if data entity @s data{room:"empty"} run tag @s add room.empty
execute if score $rooms var matches 1.. run scoreboard players remove $rooms var 1
scoreboard players add $count var 1

execute positioned ~ ~1 ~ run function a:region/dungeon/generate/place with entity @s data
$execute rotated as @s run function a:region/dungeon/generate/rooms/$(room)/exits