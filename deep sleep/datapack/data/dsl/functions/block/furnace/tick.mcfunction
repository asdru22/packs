execute unless block ~ ~ ~ #dsl:furnace run kill @s
data modify storage dsl:storage root.temp.item set from block ~ ~ ~ Items[{Slot:0b}]
execute if data storage dsl:storage root.temp.item.tag.dsl run function dsl:block/furnace/remove_item