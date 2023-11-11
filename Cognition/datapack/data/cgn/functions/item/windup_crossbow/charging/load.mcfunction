data modify storage cgn:storage root.temp.inv set from entity @s Inventory
data modify storage cgn:storage root.temp.proj set value []
data modify storage cgn:storage root.temp.proj append from storage cgn:storage root.temp.inv[{id:"minecraft:arrow"}]
data modify storage cgn:storage root.temp.proj append from storage cgn:storage root.temp.inv[{id:"minecraft:tipped_arrow"}]
data modify storage cgn:storage root.temp.proj append from storage cgn:storage root.temp.inv[{id:"minecraft:spectral_arrow"}]
data modify storage cgn:storage root.temp.proj append from storage cgn:storage root.temp.inv[{id:"minecraft:firework_rocket"}]

scoreboard players set $success cgn.dummy 0
data remove storage cgn:storage root.temp.proj_found
function cgn:item/windup_crossbow/charging/search_projectile