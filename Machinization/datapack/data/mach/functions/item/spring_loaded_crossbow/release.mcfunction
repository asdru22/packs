data modify storage mach:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}]
data modify storage mach:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}

data modify storage mach:storage root.temp.item.tag.ChargedProjectiles set value [{id:"minecraft:air"}]
data modify storage mach:storage root.temp.item.tag.Charged set value 1b

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:copy_nbt
execute if data storage mach:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand mach:copy_nbt

tag @s remove mach.release