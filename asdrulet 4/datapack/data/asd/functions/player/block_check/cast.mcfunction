scoreboard players remove range asd.d 1

execute if block ~ ~ ~ #asd:target align xyz positioned ~.5 ~ ~.5 if block ~ ~-1 ~ dropper[facing=up] run function asd:player/block_check/found
execute if score range asd.d matches 1.. positioned ^ ^ ^1 run function asd:player/block_check/cast

execute if entity @s[tag=asd.player.target_found] if score found asd.d matches 0 at @s run function asd:player/block_check/find_villager