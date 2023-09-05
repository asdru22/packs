particle smoke ~ ~ ~ 0.1 0.5 0.1 0.01 10 force

execute store result storage mach:storage root.temp.item.Count byte 0.99 run data get storage mach:storage root.temp.item.Count
item replace block ~ ~ ~ container.13 with stone
data modify block ~ ~ ~ Items[{Slot:13b}] set from storage mach:storage root.temp.item