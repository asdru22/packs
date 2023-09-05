data modify storage aar:storage root.temp.inv set from entity @s Inventory
execute positioned ~ 1000 ~ summon armor_stand run function aar:item/automatic_bow/track_slots/main

execute unless data storage aar:storage root.temp.ammo run data modify storage aar:storage root.temp.ammo set value {id:"minecraft:arrow",Count:1b}

execute if data storage aar:storage root.temp.ammo run function aar:item/automatic_bow/shoot