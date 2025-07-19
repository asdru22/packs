# Commands to run every second

## Entity commands
execute as @e[type=#haywire:technical/second_clock,tag=haywire.second_clock] at @s run function haywire:entity/second_clock

## Player second_clock
execute as @a at @s run function haywire:entity/player/second_clock

## Reschedule
schedule function haywire:technical/second_clock 1s replace
