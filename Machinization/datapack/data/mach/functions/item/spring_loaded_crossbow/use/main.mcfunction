data modify storage mach:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}]
data modify storage mach:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}

data modify storage mach:storage root.temp.ammo set from storage mach:storage root.temp.item.tag.mach.Ammo[0]
function mach:item/spring_loaded_crossbow/use/projectile
data remove storage mach:storage root.temp.item.tag.mach.Ammo[0]
execute unless data storage mach:storage root.temp.item.tag.mach.Ammo[] run tag @s remove mach.using_spring_loaded_crossbow 

execute store result score $ammo mach.data if data storage mach:storage root.temp.item.tag.mach.Ammo[]
function mach:item/spring_loaded_crossbow/lore

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:copy_nbt
execute if data storage mach:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand mach:copy_nbt


playsound minecraft:item.crossbow.shoot player @a[distance=..10]