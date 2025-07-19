## Prevent Darkening
execute if entity @s[type=minecraft:item_display,tag=!haywire.glow_in_the_dark] run function haywire:block/update_light/main

## Break fixed moonlit monolith
execute if entity @s[tag=haywire.moonlit_monolith.fixed] unless block ~ ~-1 ~ barrier run function haywire:block/moonlit_monolith/break/fixed with entity @s item.components."minecraft:custom_data".haywire