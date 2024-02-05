execute if score @s dsl.break_suspicious_gravel matches 1.. run function dsl:block/suspicious_particle/check_for_item

execute if score @s dsl.use_warped_fungus_on_a_stick matches 1.. run function dsl:item/warped_fungus_on_a_stick/init

execute if score @s dsl.place_item_frame matches 1.. run function dsl:item/item_frame/init

execute if score @s dsl.using_item matches 1.. run function dsl:item/usable/tick

execute if score @s dsl.use_crossbow matches 1.. if predicate dsl:entity/holding/caelestiquoia_repeater run function dsl:item/caelestiquoia_repeater/use/main