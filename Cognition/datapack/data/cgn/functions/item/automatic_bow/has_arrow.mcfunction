data modify storage cgn:storage root.temp.inv set from entity @s Inventory
execute positioned ~ 1000 ~ summon armor_stand run function cgn:item/automatic_bow/track_slots/main

execute if entity @s[gamemode=creative] unless data storage cgn:storage root.temp.ammo run data modify storage cgn:storage root.temp.ammo set value {id:"minecraft:arrow",Count:1b,Slot:-1b}

execute if data storage cgn:storage root.temp.ammo run function cgn:item/automatic_bow/shoot