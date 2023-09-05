scoreboard players reset @s aar.used_crossbow
# get item
data modify storage aar:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}]
data modify storage aar:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}

# get and remove arrow
data remove storage aar:storage root.temp.item.tag.aar.stored_projectiles[-1]
execute store result storage aar:storage root.temp.int.count int 1 if data storage aar:storage root.temp.item.tag.aar.stored_projectiles[]
function aar:item/windup_crossbow/charging/lore with storage aar:storage root.temp.int

execute if data storage aar:storage root.temp.item.tag.aar.stored_projectiles[] run function aar:item/windup_crossbow/use/next_arrow

# update data
execute unless data storage aar:storage root.temp.item.Slot run item modify entity @s weapon.mainhand aar:copy_nbt
execute if data storage aar:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand aar:copy_nbt

execute if entity @s[gamemode=!creative] run function aar:item/windup_crossbow/use/damage