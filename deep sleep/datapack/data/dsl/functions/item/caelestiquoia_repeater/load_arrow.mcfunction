
data modify storage dsl:storage root.temp.inv set from entity @s Inventory
data modify storage dsl:storage root.temp.proj set value []
data modify storage dsl:storage root.temp.proj append from storage dsl:storage root.temp.inv[{id:"minecraft:arrow"}]
data modify storage dsl:storage root.temp.proj append from storage dsl:storage root.temp.inv[{id:"minecraft:tipped_arrow"}]
data modify storage dsl:storage root.temp.proj append from storage dsl:storage root.temp.inv[{id:"minecraft:spectral_arrow"}]
data modify storage dsl:storage root.temp.proj append from storage dsl:storage root.temp.inv[{id:"minecraft:firework_rocket"}]

scoreboard players set $success dsl.dummy 0
data remove storage dsl:storage root.temp.proj_found
function dsl:item/caelestiquoia_repeater/search_projectile