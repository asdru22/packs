data remove storage dsl:storage root.temp.item

data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage dsl:storage root.temp.item set from entity @s SelectedItem

function dsl:item/warped_fungus_on_a_stick/item with storage dsl:storage root.temp.item.tag.dsl
execute if entity @s[gamemode=!creative] if data storage dsl:storage root.temp.item.tag.dsl{consume_on_use:true} run function dsl:item/warped_fungus_on_a_stick/consume

scoreboard players reset @s dsl.use_warped_fungus_on_a_stick