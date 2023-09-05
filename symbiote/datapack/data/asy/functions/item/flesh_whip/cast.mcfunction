scoreboard players remove .dist asy.data 1
particle minecraft:dust 0.9 0 2.2 1 ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=!#asy:technical,tag=!asy.me,distance=..2,tag=!asy.symbiote] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] positioned ~0.75 ~0.75 ~0.75 run function asy:item/flesh_whip/hit
execute if score .dist asy.data matches 1.. positioned ^ ^ ^0.5 rotated ~ ~1.33 run function asy:item/flesh_whip/cast