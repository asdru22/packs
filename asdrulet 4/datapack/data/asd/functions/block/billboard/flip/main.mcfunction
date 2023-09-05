execute store success score .result asd.d if entity @s[tag=asd.billboard_flip]
execute if score .result asd.d matches 0 if entity @s[tag=!asd.billboard_flip] run tag @s add asd.billboard_flip
execute if score .result asd.d matches 1 if entity @s[tag=asd.billboard_flip] run tag @s remove asd.billboard_flip
tellraw @s {"translate":"text.asd.billboard_flip","color":"yellow"}
scoreboard players reset @s asd.billboard_flip
scoreboard players enable @s asd.billboard_flip 