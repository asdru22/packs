## Prevent Darkening
execute if entity @s[type=minecraft:item_display,tag=!vrm.glow_in_the_dark] run function vrm:block/update_light/main

## Break fixed moonlit monolith
execute if entity @s[tag=vrm.moonlit_monolith.fixed] unless block ~ ~-1 ~ barrier run function vrm:block/moonlit_monolith/break/fixed with entity @s item.components."minecraft:custom_data".vrm