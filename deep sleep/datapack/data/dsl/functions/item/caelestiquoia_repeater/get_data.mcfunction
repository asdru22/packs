data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}]
data modify storage dsl:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}
execute store result score $temp2 dsl.dummy if data storage dsl:storage root.temp.item.tag.dsl.ammo[]
execute if score $temp2 dsl.dummy matches ..15 run function dsl:item/caelestiquoia_repeater/load_arrow