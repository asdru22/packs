data modify storage mach:storage root.temp.inv set value []
data modify storage mach:storage root.temp.inv append from entity @s Inventory[{id:"minecraft:arrow"}]
data modify storage mach:storage root.temp.inv append from entity @s Inventory[{id:"minecraft:tipped_arrow"}]
data modify storage mach:storage root.temp.inv append from entity @s Inventory[{id:"minecraft:spectral_arrow"}]
data modify storage mach:storage root.temp.inv append from entity @s Inventory[{id:"minecraft:firework_rocket"}]

scoreboard players set $counter mach.data -1
data remove storage mach:storage root.temp.ammo
function mach:item/spring_loaded_crossbow/iter