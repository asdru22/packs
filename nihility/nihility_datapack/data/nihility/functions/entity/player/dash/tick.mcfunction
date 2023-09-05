execute if score @s nihility.dash_timer matches 2..7 if entity @s[tag=nihility.can_dash] run function nihility:entity/player/dash/motion
scoreboard players reset @s[tag=!nihility.is_dashing,scores={nihility.dash_timer=8}] nihility.dash_timer
scoreboard players add @s nihility.dash_timer 1