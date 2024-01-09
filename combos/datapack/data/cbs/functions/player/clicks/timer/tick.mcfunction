scoreboard players remove @s cbs.combo_timer 1
execute if score @s cbs.combo_timer matches 0 run function cbs:player/clicks/timer/reset
execute if score @s cbs.combo_timer matches 0 run title @s actionbar {"translate":"cbs.combo.reset","color":"gray"}