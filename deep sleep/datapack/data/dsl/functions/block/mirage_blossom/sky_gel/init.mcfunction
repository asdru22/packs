execute align xyz positioned ~.5 ~ ~.5 run function dsl:block/mirage_blossom/sky_gel/scan_blocks

particle minecraft:happy_villager ~ ~0.3 ~ 0.2 0.2 0.2 0 5

execute on passengers run kill @s
kill @s 

execute as @p[advancements={dsl:technical/player_interacted_with_entity/interaction=true},gamemode=!creative] run function dsl:item/warped_fungus_on_a_stick/consume