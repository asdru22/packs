execute as @a at @s run function cotv:player/second
execute as @e[tag=cotv.entity] at @s run function cotv:entity/second
execute as @e[type=#cotv:mobs,tag=!cotv.mob.setup] run function cotv:entity/setup
schedule function cotv:technical/second 1s replace