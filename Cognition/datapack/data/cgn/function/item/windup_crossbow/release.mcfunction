data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}

execute unless data storage cgn:storage root.temp.item.Slot run function cgn:technical/macros/loot/replace_mainhand with storage cgn:storage root.temp.item
execute if data storage cgn:storage root.temp.item{Slot:106b} run function cgn:technical/macros/loot/replace_offhand with storage cgn:storage root.temp.item

tag @s remove cgn.item.windup_crossbow.release