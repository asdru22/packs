execute if entity @s[tag=dsl.block] run function dsl:block/second

execute unless score %convert_markers dsl.dummy matches 1 if entity @s[tag=dsl.marker] run function dsl:postgen/marker/main

execute if entity @s[tag=dsl.entity] if predicate dsl:chance/3_20 run function dsl:entity/vanilla_base/idle_sounds with entity @s ArmorItems[3].tag.dsl

execute if entity @s[tag=dsl.faun,scores={dsl.dummy2=1..}] run function dsl:entity/faun/second