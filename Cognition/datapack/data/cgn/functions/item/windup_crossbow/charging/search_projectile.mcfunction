function cgn:item/windup_crossbow/charging/scan_slots

execute if entity @s[gamemode=creative] if score $success cgn.dummy matches 0 run data modify storage cgn:storage root.temp.proj_found set value {id:"minecraft:arrow"}

execute if data storage cgn:storage root.temp.proj_found run function cgn:item/windup_crossbow/charging/found