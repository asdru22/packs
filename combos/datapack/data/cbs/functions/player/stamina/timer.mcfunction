scoreboard players add @s cbs.stamina_timer 1
execute if score @s cbs.stamina_timer matches 40 run function cbs:player/stamina/regenerate