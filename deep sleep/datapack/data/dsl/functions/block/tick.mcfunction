execute if entity @s[tag=dsl.suspicious_snow] positioned ~ ~-1 ~ run function dsl:block/suspicious_snow/tick

execute if entity @s[tag=dsl.mirage_blossom] run function dsl:block/mirage_blossom/tick

execute if entity @s[tag=dsl.campfire] run function dsl:block/campfire/tick

execute if entity @s[tag=dsl.furnace] run function dsl:block/furnace/tick


execute if entity @s[tag=dsl.brewing_stand] run function dsl:block/brewing_stand/brewing/tick

execute if entity @s[tag=dsl.the_hex] positioned ~ ~-1 ~ run function dsl:block/the_hex/tick/main

execute if entity @s[tag=dsl.jukebox] unless block ~ ~ ~ jukebox[has_record=true] run function dsl:block/jukebox/stop

execute if entity @s[tag=dsl.caelestiquoia_bush] run function dsl:block/caelestiquoia_bush/tick

execute if entity @s[tag=dsl.caelestiquoia_log] run function dsl:block/caelestiquoia/log/tick