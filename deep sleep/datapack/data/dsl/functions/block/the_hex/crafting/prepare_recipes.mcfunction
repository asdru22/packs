data modify storage dsl:storage root.temp.recipes set from storage dsl:storage root.temp.barrel_data[1]

execute unless data storage dsl:storage root.temp.recipes[{Slot:1b}].Count run data modify storage dsl:storage root.temp.recipes[{Slot:1b}] set value {Slot:1b,Count:1b,id:"minecraft:air"}
execute unless data storage dsl:storage root.temp.recipes[{Slot:9b}].Count run data modify storage dsl:storage root.temp.recipes[{Slot:9b}] set value {Slot:1b,Count:1b,id:"minecraft:air"}
execute unless data storage dsl:storage root.temp.recipes[{Slot:10b}].Count run data modify storage dsl:storage root.temp.recipes[{Slot:10b}] set value {Slot:1b,Count:1b,id:"minecraft:air"}
execute unless data storage dsl:storage root.temp.recipes[{Slot:11b}].Count run data modify storage dsl:storage root.temp.recipes[{Slot:11b}] set value {Slot:1b,Count:1b,id:"minecraft:air"}
execute unless data storage dsl:storage root.temp.recipes[{Slot:19b}].Count run data modify storage dsl:storage root.temp.recipes[{Slot:19b}] set value {Slot:1b,Count:1b,id:"minecraft:air"}

function dsl:block/the_hex/crafting/recipes