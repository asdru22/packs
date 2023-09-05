data remove storage mach:storage root.temp.ammo.Count

execute unless data storage mach:storage root.temp.item.tag.mach.Ammo run data modify storage mach:storage root.temp.item.tag.mach.Ammo set value []

function mach:item/spring_loaded_crossbow/remove_ammo

data remove storage mach:storage root.temp.ammo.Slot
data modify storage mach:storage root.temp.item.tag.mach.Ammo append from storage mach:storage root.temp.ammo
scoreboard players add $ammo mach.data 1
function mach:item/spring_loaded_crossbow/lore

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:copy_nbt
execute if data storage mach:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand mach:copy_nbt

tag @s add mach.release

playsound minecraft:item.crossbow.loading_end player @a[distance=..10]