execute if block ~ ~ ~ chest{CustomName:'{"text":"Loot"}'} run function reg:blocks/chests/check
scoreboard players remove .range asd.d 1
execute if score .range asd.d matches 1.. positioned ^ ^ ^0.25 run function reg:blocks/chests/cast