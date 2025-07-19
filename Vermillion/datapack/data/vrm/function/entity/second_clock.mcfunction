# Functions to run off of every vrm entity every second

## All blocks
execute if entity @s[tag=vrm.block] run function vrm:block/second_clock

## All entities
execute if entity @s[tag=vrm.moonlit_monolith.moonstone] run function vrm:block/moonlit_monolith/moonstone/second_clock