data modify storage dsl:storage root.temp.item set from storage dsl:storage root.temp.campfire.Items[{Slot:2b}]
execute if data storage dsl:storage root.temp.item.tag.dsl{cookable:true} run function dsl:block/campfire/cooking/custom with storage dsl:storage root.temp.campfire.Items[{Slot:2b}]
data modify storage dsl:storage root.temp.campfire.CookingTimes[2] set value 0