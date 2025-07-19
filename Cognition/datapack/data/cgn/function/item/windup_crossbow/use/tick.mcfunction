# get item
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}

# get and remove arrow
data remove storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.stored_projectiles[-1]
execute store result storage cgn:storage root.temp.int.count int 1 if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.stored_projectiles[]
function cgn:item/windup_crossbow/charging/lore with storage cgn:storage root.temp.int

execute if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.stored_projectiles[] run function cgn:item/windup_crossbow/use/next_arrow

# update data
execute unless data storage cgn:storage root.temp.item.Slot run function cgn:technical/macros/loot/replace_mainhand with storage cgn:storage root.temp.item
execute if data storage cgn:storage root.temp.item{Slot:106b} run function cgn:technical/macros/loot/replace_offhand with storage cgn:storage root.temp.item