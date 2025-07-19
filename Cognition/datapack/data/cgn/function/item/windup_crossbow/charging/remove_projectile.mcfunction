execute if data storage cgn:storage root.temp.proj_found{Slot:-106b} run item modify entity @s weapon.offhand cgn:decrease_count

execute store result storage cgn:storage root.temp.int.slot int 1 run data get storage cgn:storage root.temp.proj_found.Slot
execute if data storage cgn:storage root.temp.proj_found.Slot run function cgn:item/windup_crossbow/charging/remove_ammo with storage cgn:storage root.temp.int