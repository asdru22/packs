title @s title [{"text":"00:"},{"score":{"name": "@s","objective": "asd.timer"}}]
execute if score @s asd.timer matches 30 run tellraw @s {"translate":"msg.tutorial.c2","color":"dark_green"}
scoreboard players remove @s asd.timer 1
execute if score @s asd.timer matches 0 run function reg:events/non_reouccuring/tutorial/missile/countdown/fail

execute positioned 17 89 -29 if entity @s[distance=..3] run function reg:events/non_reouccuring/tutorial/exit