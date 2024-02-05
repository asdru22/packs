scoreboard players operation $temp dsl.dummy = @s dsl.using_item
scoreboard players operation $temp dsl.dummy %= 10 dsl.dummy
execute if score $temp dsl.dummy matches 0 run function dsl:item/caelestiquoia_repeater/get_data