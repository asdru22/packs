execute as @a at @s run function a:technical/timers/player_tick

execute as @e[type=#a:affected/tick,tag=tick] at @s run function a:technical/timers/entity_tick

kill @e[type=experience_orb]

scoreboard players operation #motion_fix var *= -1 const