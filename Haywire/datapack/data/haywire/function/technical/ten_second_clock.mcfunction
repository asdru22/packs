# Commands to run every ten seconds

## As entities
execute as @e[type=#haywire:technical/ten_second_clock,tag=haywire.ten_second_clock] at @s run function haywire:entity/ten_second_clock

schedule function haywire:technical/ten_second_clock 10t replace