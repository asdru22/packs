execute store success score .result asy.data if entity @s[tag=asy.billboard_flip]
execute if score .result asy.data matches 0 if entity @s[tag=!asy.billboard_flip] run tag @s add asy.billboard_flip
execute if score .result asy.data matches 1 if entity @s[tag=asy.billboard_flip] run tag @s remove asy.billboard_flip
tellraw @s {"translate":"text.asy.billboard_flip","color":"yellow"}
scoreboard players reset @s asy.billboard_flip
scoreboard players enable @s asy.billboard_flip 