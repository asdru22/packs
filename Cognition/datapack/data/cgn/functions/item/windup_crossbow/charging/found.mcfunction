data modify storage cgn:storage root.temp.proj_found.Count set value 1b
## add projectile to item tag
data modify storage cgn:storage root.temp.item.tag.cgn.stored_projectiles append from storage cgn:storage root.temp.proj_found
## remove 1 projectile
execute if data storage cgn:storage root.temp.proj_found{Slot:-106b} run item modify entity @s weapon.offhand cgn:decrease_count/one
execute store result storage cgn:storage root.temp.int.slot int 1 run data get storage cgn:storage root.temp.proj_found.Slot
execute if data storage cgn:storage root.temp.proj_found.Slot run function cgn:item/windup_crossbow/charging/remove_ammo with storage cgn:storage root.temp.int
data remove storage cgn:storage root.temp.proj_found.Slot
## lore
execute store result storage cgn:storage root.temp.int.count int 1 run scoreboard players add #temp cgn.dummy 1
function cgn:item/windup_crossbow/charging/lore with storage cgn:storage root.temp.int
## update nbt
execute unless data storage cgn:storage root.temp.item.Slot run item modify entity @s weapon.mainhand cgn:copy_nbt
execute if data storage cgn:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand cgn:copy_nbt

tag @s add cgn.using_item_release

playsound minecraft:item.crossbow.loading_end player @a[distance=..10]