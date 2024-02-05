data remove block ~ ~ ~ Items[{Slot:0b}]
execute store result score $count dsl.dummy run data get storage dsl:storage root.temp.item.Count

execute if data storage dsl:storage root.temp.item{id:"minecraft:salmon"} run loot give @p loot dsl:technical/copy_nbt/salmon

data remove storage dsl:storage root.temp.item