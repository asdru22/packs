execute store result storage mach:storage root.temp.item.Count byte 1 run scoreboard players get $delete mach.data
item replace block ~ ~ ~ container.13 with stone
data modify block ~ ~ ~ Items[{Slot:13b}] set from storage mach:storage root.temp.item