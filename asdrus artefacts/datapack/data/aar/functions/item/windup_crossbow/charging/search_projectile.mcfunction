function aar:item/windup_crossbow/charging/scan_slots

execute if entity @s[gamemode=creative] if score $success aar.int matches 0 run data modify storage aar:storage root.temp.proj_found set value {id:"minecraft:arrow"}

execute if data storage aar:storage root.temp.proj_found run function aar:item/windup_crossbow/charging/found