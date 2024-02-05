execute as @e[type=marker,tag=room] at @s run function a:region/dungeon/generate/clear

scoreboard players set $rooms var 45
scoreboard players reset $count var
scoreboard players set $boss var 0

execute positioned 0 0 0 run function a:region/dungeon/generate/start
tellraw @p {"score":{"name": "$count","objective": "var"}}
execute as @e[type=marker,tag=room.empty] at @s positioned ~ ~1 ~ run function a:region/dungeon/generate/rooms/empty/walls_check