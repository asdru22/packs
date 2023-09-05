execute as @a at @s run function nihility:entity/player/tick
execute as @e[type=#nihility:affected,tag=nihility.entity] at @s run function nihility:entity/tick

scoreboard players operation vsfix nihility.data *= -1 nihility.data