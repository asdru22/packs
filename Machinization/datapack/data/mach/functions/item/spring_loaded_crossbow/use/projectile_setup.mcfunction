tag @s remove mach.setup
data merge entity @s {pickup:1b,damage:4}
data modify entity @s Motion set from storage mach:storage root.temp.motion
data modify entity @s UUID set from storage mach:storage root.temp.arrow.UUID
execute if data storage mach:storage root.temp.ammo{id:"minecraft:tipped_arrow"} run data modify entity @s Potion set from storage mach:storage root.temp.ammo.tag.Potion