execute as @a at @s run function mach:entity/player/second
execute as @e[type=#mach:affected,tag=mach.second] at @s run function mach:entity/second

schedule function mach:technical/second 1s replace