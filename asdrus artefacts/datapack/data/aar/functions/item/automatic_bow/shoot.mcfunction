data modify storage aar:storage root.temp.uuid set from entity @s UUID
data modify storage aar:storage root.temp.rotation set from entity @s Rotation

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 1.3


execute if entity @s[gamemode=!creative] run function aar:item/automatic_bow/track_slots/remove_1

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1.33 summon marker run function aar:technical/math/trig

execute store result storage aar:storage root.temp.ammo.x double 0.03 run random value -10..10
execute store result storage aar:storage root.temp.ammo.y double 0.03 run random value -10..10

data modify storage aar:storage root.temp.ammo.x set string storage aar:storage root.temp.ammo.x 0 -1
data modify storage aar:storage root.temp.ammo.y set string storage aar:storage root.temp.ammo.y 0 -1

execute if data storage aar:storage root.temp.ammo{id:"minecraft:tipped_arrow"} run data modify storage aar:storage root.temp.ammo.id set value "minecraft:arrow"

execute anchored eyes run function aar:item/automatic_bow/summon_arrow with storage aar:storage root.temp.ammo

execute if entity @s[gamemode=!creative] run function aar:item/warped_fungus_on_a_stick/durability