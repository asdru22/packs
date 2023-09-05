data modify storage aar:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}]
data modify storage aar:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}

function aar:item/windup_crossbow/use/next_arrow

execute unless data storage aar:storage root.temp.item.Slot run item modify entity @s weapon.mainhand aar:copy_nbt
execute if data storage aar:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand aar:copy_nbt

tag @s remove aar.using_item_release