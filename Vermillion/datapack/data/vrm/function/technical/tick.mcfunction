# Functions to run every single tick

## Entity Ticking
execute as @e[type=#vrm:technical/tick,tag=vrm.tick] at @s run function vrm:entity/tick

## Player Tick
execute as @a at @s run function vrm:entity/player/tick/main
