execute if entity @s[scores={dsl.third_eye_duration=1..}] run function dsl:item/potions/third_eye/effects

execute if entity @s[tag=dsl.player.sleeping] unless data entity @s SleepingX run function dsl:entity/player/sleeping/stop

execute if entity @s[tag=dsl.player.drink_third_eye_potion] run particle minecraft:scrape ~ ~1 ~ 0.2 0.4 0.2 0.01 4 

tag @s remove dsl.player.used_goat_horn