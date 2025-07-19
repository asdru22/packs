# Functions to run off of every haywire block every single tick

## Moonlit Monolith
execute if entity @s[tag=haywire.moonlit_monolith,tag=!haywire.moonlit_monolith.fixed] unless block ~ ~ ~ furnace run function haywire:block/moonlit_monolith/break/main