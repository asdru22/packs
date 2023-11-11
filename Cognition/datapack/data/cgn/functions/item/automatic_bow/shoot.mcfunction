data modify storage cgn:storage root.temp.uuid set from entity @s UUID
data modify storage cgn:storage root.temp.rotation set from entity @s Rotation

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 1.3

execute if entity @s[gamemode=!creative] run function cgn:item/automatic_bow/track_slots/remove_1 with storage cgn:storage root.temp.ammo

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1.33 summon marker run function srn:technical/math/resolve_vector

execute store result storage cgn:storage root.temp.ammo.x double 0.03 run random value -10..10
execute store result storage cgn:storage root.temp.ammo.y double 0.03 run random value -10..10

execute if data storage cgn:storage root.temp.ammo{id:"minecraft:tipped_arrow"} run data modify storage cgn:storage root.temp.ammo.id set value "minecraft:arrow"

execute anchored eyes run function cgn:item/automatic_bow/summon_arrow with storage cgn:storage root.temp.ammo