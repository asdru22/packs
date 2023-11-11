scoreboard players reset @s cgn.used_crossbow
# get item
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}

# get and remove arrow
data remove storage cgn:storage root.temp.item.tag.cgn.stored_projectiles[-1]
execute store result storage cgn:storage root.temp.int.count int 1 if data storage cgn:storage root.temp.item.tag.cgn.stored_projectiles[]
function cgn:item/windup_crossbow/charging/lore with storage cgn:storage root.temp.int

execute if data storage cgn:storage root.temp.item.tag.cgn.stored_projectiles[] run function cgn:item/windup_crossbow/use/next_arrow

# update data
execute unless data storage cgn:storage root.temp.item.Slot run item modify entity @s weapon.mainhand cgn:copy_nbt
execute if data storage cgn:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand cgn:copy_nbt

execute if entity @s[gamemode=!creative] run function cgn:item/windup_crossbow/use/damage