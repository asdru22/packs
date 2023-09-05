data modify storage aar:storage root.temp.proj_found.Count set value 1b
## add projectile to item tag
data modify storage aar:storage root.temp.item.tag.aar.stored_projectiles append from storage aar:storage root.temp.proj_found
## remove 1 projectile
execute if data storage aar:storage root.temp.proj_found{Slot:-106b} run item modify entity @s weapon.offhand aar:remove_one
execute store result storage aar:storage root.temp.int.slot int 1 run data get storage aar:storage root.temp.proj_found.Slot
execute if data storage aar:storage root.temp.proj_found.Slot run function aar:item/windup_crossbow/charging/remove_ammo with storage aar:storage root.temp.int
data remove storage aar:storage root.temp.proj_found.Slot
## lore
execute store result storage aar:storage root.temp.int.count int 1 run scoreboard players add #temp aar.int 1
function aar:item/windup_crossbow/charging/lore with storage aar:storage root.temp.int
## update nbt
execute unless data storage aar:storage root.temp.item.Slot run item modify entity @s weapon.mainhand aar:copy_nbt
execute if data storage aar:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand aar:copy_nbt

tag @s add aar.using_item_release

playsound minecraft:item.crossbow.loading_end player @a[distance=..10]