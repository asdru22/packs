# Functions to run every single tick

## Entity Ticking
execute as @e[type=#haywire:technical/tick,tag=haywire.tick] at @s run function haywire:entity/tick

## Player Tick
execute as @a at @s run function haywire:entity/player/tick/main
