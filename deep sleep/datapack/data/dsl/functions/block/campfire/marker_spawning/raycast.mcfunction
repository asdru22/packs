execute if block ^ ^ ^0.01 #minecraft:campfires positioned ^ ^ ^0.01 align xyz run function dsl:block/campfire/marker_spawning/spawn
execute if entity @s[distance=..7] unless block ^ ^ ^0.01 #minecraft:campfires positioned ^ ^ ^0.01 run function dsl:block/campfire/marker_spawning/raycast