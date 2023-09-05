title @s title {"text":"00:00","color":"dark_red","bold": true}
tellraw @s {"translate":"msg.tutorial.c3","color":"gray"}
function reg:events/non_reouccuring/tutorial/exit
tp @s 91 120 123 0 0
effect give @s blindness 2 10 true