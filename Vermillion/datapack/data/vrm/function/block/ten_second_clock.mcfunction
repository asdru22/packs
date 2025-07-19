# Functions to run off of every vrm block every ten seconds

## Hopper Prevention
execute if entity @s[type=minecraft:item_display,tag=vrm.prevents_hoppers] positioned ~ ~-1 ~ run function vrm:block/hopper_updating/fill

## Moonlit monolith night events
execute if entity @s[tag=vrm.moonlit_monolith.fixed] run function vrm:block/moonlit_monolith/ten_second_clock/main