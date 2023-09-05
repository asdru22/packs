execute as @a at @s run function asd:player/10_ticks
execute as @e[type=#asd:affected,tag=asd.entity,tag=asd.10ticks] at @s run function asd:entity/10_ticks

schedule function asd:technical/timers/10ticks 10t