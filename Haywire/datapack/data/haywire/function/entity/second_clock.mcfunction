# Functions to run off of every haywire entity every second

## All blocks
execute if entity @s[tag=haywire.block] run function haywire:block/second_clock

## All entities
execute if entity @s[tag=haywire.moonlit_monolith.moonstone] run function haywire:block/moonlit_monolith/moonstone/second_clock