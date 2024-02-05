execute if predicate dsl:entity/holding/caelestiquoia_repeater run function dsl:item/caelestiquoia_repeater/tick

execute if score @s dsl.using_item = @s dsl.prev_using_item run function dsl:item/usable/release

scoreboard players operation @s dsl.prev_using_item = @s dsl.using_item