# Commands to run every second

## Entity commands
execute as @e[type=#vrm:technical/second_clock,tag=vrm.second_clock] at @s run function vrm:entity/second_clock

## Player second_clock
execute as @a at @s run function vrm:entity/player/second_clock

## Reschedule
schedule function vrm:technical/second_clock 1s replace
