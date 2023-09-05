scoreboard players remove range asd.d 1

execute as @e[type=villager, tag=asd.marker.right_click, dx=0, dy=0, dz=0,distance=..2] at @s align xyz positioned ~.5 ~ ~.5 run function asd:entity/marker_villager/found

execute if score range asd.d matches 1.. positioned ^ ^ ^1 run function asd:entity/marker_villager/cast