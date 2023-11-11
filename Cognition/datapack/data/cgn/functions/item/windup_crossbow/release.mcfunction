data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}

function cgn:item/windup_crossbow/use/next_arrow

execute unless data storage cgn:storage root.temp.item.Slot run item modify entity @s weapon.mainhand cgn:copy_nbt
execute if data storage cgn:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand cgn:copy_nbt

tag @s remove cgn.using_item_release