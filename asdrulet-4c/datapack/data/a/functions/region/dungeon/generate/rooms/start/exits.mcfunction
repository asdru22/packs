execute if score $rooms var matches 1.. positioned ^ ^ ^11 if block ~ ~ ~ air unless entity @e[type=marker,tag=room,distance=..0.5] run function a:region/dungeon/generate/rooms/start/pool
execute if score $rooms var matches ..0 positioned ^ ^ ^11 if block ~ ~ ~ air unless entity @e[type=marker,tag=room,distance=..0.5] run function a:region/dungeon/generate/rooms/end/main