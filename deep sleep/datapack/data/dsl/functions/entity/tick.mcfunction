
execute if entity @s[tag=dsl.block] run function dsl:block/tick
# mob with item display
execute if entity @s[tag=dsl.item_display_riding] run function dsl:entity/item_display_riding/tick/main
# mob with head model
execute if entity @s[tag=dsl.entity] run function dsl:entity/vanilla_base/tick