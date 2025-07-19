# Functions to run off of every vrm block every single tick

## Moonlit Monolith
execute if entity @s[tag=vrm.moonlit_monolith,tag=!vrm.moonlit_monolith.fixed] unless block ~ ~ ~ furnace run function vrm:block/moonlit_monolith/break/main