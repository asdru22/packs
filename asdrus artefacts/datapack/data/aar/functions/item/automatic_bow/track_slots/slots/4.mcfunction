data modify entity @s HandItems[0] set from storage aar:storage root.temp.inv[{Slot:4b}]
execute if predicate aar:entity/holding/arrows run data modify storage aar:storage root.temp.ammo set from storage aar:storage root.temp.inv[{Slot:4b}]