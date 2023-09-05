data modify storage aar:storage root.temp.inv set from entity @s Inventory
data modify storage aar:storage root.temp.proj set value []
data modify storage aar:storage root.temp.proj append from storage aar:storage root.temp.inv[{id:"minecraft:arrow"}]
data modify storage aar:storage root.temp.proj append from storage aar:storage root.temp.inv[{id:"minecraft:tipped_arrow"}]
data modify storage aar:storage root.temp.proj append from storage aar:storage root.temp.inv[{id:"minecraft:spectral_arrow"}]
data modify storage aar:storage root.temp.proj append from storage aar:storage root.temp.inv[{id:"minecraft:firework_rocket"}]

scoreboard players set $success aar.int 0
data remove storage aar:storage root.temp.proj_found
function aar:item/windup_crossbow/charging/search_projectile