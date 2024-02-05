execute if score $rooms var matches 1.. rotated ~ 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/empty/pool
execute if score $rooms var matches 1.. rotated ~-90 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/empty/pool
execute if score $rooms var matches 1.. rotated ~90 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/empty/pool

execute if score $rooms var matches ..0 rotated ~ 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/end/main
execute if score $rooms var matches ..0 rotated ~-90 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/end/main
execute if score $rooms var matches ..0 rotated ~90 0 positioned ^ ^ ^11 if block ~ ~ ~ air run function a:region/dungeon/generate/rooms/end/main