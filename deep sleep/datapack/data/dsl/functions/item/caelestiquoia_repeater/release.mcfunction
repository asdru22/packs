data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}]
data modify storage dsl:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}

data modify storage dsl:storage root.temp.item.tag.ChargedProjectiles set value [{id:"minecraft:air"}]
data modify storage dsl:storage root.temp.item.tag.Charged set value 1b

execute unless data storage dsl:storage root.temp.item.Slot run item modify entity @s weapon.mainhand dsl:copy_nbt
execute if data storage dsl:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand dsl:copy_nbt

tag @s remove dsl.release