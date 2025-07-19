# Commands to run every ten seconds

## As entities
execute as @e[type=#vrm:technical/ten_second_clock,tag=vrm.ten_second_clock] at @s run function vrm:entity/ten_second_clock

schedule function vrm:technical/ten_second_clock 10t replace