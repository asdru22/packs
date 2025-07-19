data modify storage cgn:storage root.temp.inv set from entity @s Inventory

function cgn:item/automatic_bow/track_slots/main

execute if score $creative cgn.dummy matches 1 run data modify storage cgn:storage root.temp.ammo set value {id:"minecraft:arrow",count:1,Slot:-1b}

execute unless data storage cgn:storage root.temp.ammo run return fail

# player has arrow
data modify storage cgn:storage root.temp.ammo.owner set from entity @s UUID

playsound minecraft:entity.arrow.shoot player @a[distance=..16] ~ ~ ~ 1 1.3

execute if entity @s[gamemode=!creative,predicate=!cgn:random_chance/1_3] run function cgn:item/automatic_bow/clear_arrow

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1.33 summon marker run function cgn:technical/math/resolve_vector
data modify storage cgn:storage root.temp.ammo.motion set from storage cgn:storage root.temp.motion

execute store result storage cgn:storage root.temp.ammo.x double 0.03 run random value -10..10
execute store result storage cgn:storage root.temp.ammo.y double 0.03 run random value -10..10

execute if data storage cgn:storage root.temp.ammo{id:"minecraft:tipped_arrow"} run data modify storage cgn:storage root.temp.ammo.id set value "minecraft:arrow"

execute if score $creative cgn.dummy matches 0 run data modify storage cgn:storage root.temp.ammo.pickup set value 1b
execute if score $creative cgn.dummy matches 1 run data modify storage cgn:storage root.temp.ammo.pickup set value 2b

execute if score $creative cgn.dummy matches 0 run function cgn:item/automatic_bow/damage/main

execute unless data storage cgn:storage root.temp.ammo.components."minecraft:potion_contents" run return run execute anchored eyes run function cgn:item/automatic_bow/summon_arrow with storage cgn:storage root.temp.ammo

# tipped arrow
data modify storage cgn:storage root.temp.ammo.potion_contents set from storage cgn:storage root.temp.ammo.components."minecraft:potion_contents" 
execute anchored eyes run function cgn:item/automatic_bow/summon_tipped_arrow with storage cgn:storage root.temp.ammo