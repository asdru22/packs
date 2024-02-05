data modify storage dsl:storage root.temp.item set from entity @s Inventory[{id:"minecraft:bundle",tag:{Items:[{}],dsl:{id:"bowl_of_foob"}}}]

execute store result storage dsl:storage root.temp.item.tag.Items[0].slot int 1 run data get storage dsl:storage root.temp.item.Slot

execute unless data storage dsl:storage root.temp.item.tag.Items[0].tag run data modify storage dsl:storage root.temp.item.tag.Items[0].tag set value "\"\""
function dsl:item/bowl_of_foob/clear_bundle with storage dsl:storage root.temp.item.tag.Items[0]

advancement revoke @s only dsl:technical/inventory_changed/bowl_of_foob