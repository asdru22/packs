# Functions to run off of every haywire block every ten seconds

## Hopper Prevention
execute if entity @s[type=minecraft:item_display,tag=haywire.prevents_hoppers] positioned ~ ~-1 ~ run function haywire:block/hopper_updating/fill

## Moonlit monolith night events
execute if entity @s[tag=haywire.moonlit_monolith.fixed] run function haywire:block/moonlit_monolith/ten_second_clock/main