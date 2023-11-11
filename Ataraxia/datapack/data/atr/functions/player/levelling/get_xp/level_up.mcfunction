# basic stuff
scoreboard players operation @s atr.xp.current -= @s atr.xp.max
scoreboard players operation #temp_level atr.int = @s atr.xp.level
scoreboard players add @s atr.xp.level 1
# new max xp formula xp = 5 * Level^2 + 110

scoreboard players operation #temp atr.int = @s atr.xp.level
scoreboard players operation #temp atr.int *= #temp atr.int
scoreboard players operation #temp atr.int *= #5 atr.int
scoreboard players add #temp atr.int 110

scoreboard players operation @s atr.xp.max = #temp atr.int 

# effects
title @s times 2t 1s 5t
title @s title {"translate":"atr.levelup.title","color":"yellow"}
title @s subtitle {"translate":"atr.levelup.subtitle","with":[{"score":{"name": "#temp_level","objective": "atr.int"},"color":"gold"},{"score":{"name": "@s","objective": "atr.xp.level"},"color":"gold"}],"color":"yellow"}
# check overflow
execute if score @s atr.xp.current >= @s atr.xp.max run function atr:player/levelling/get_xp/level_up