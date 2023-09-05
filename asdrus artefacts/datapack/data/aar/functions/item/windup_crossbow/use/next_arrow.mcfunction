data modify storage aar:storage root.temp.next_proj set from storage aar:storage root.temp.item.tag.aar.stored_projectiles[-1]

data modify storage aar:storage root.temp.item.tag.Charged set value 1b

execute if data storage aar:storage root.temp.next_proj{id:"arrow"} run data modify storage aar:storage root.temp.item.tag.CustomModelData set value 880000
execute if data storage aar:storage root.temp.next_proj{id:"tipped_arrow"} run data modify storage aar:storage root.temp.item.tag.CustomModelData set value 880000
execute if data storage aar:storage root.temp.next_proj{id:"spectral_arrow"} run data modify storage aar:storage root.temp.item.tag.CustomModelData set value 880001
execute if data storage aar:storage root.temp.next_proj{id:"firework_rocket"} run data modify storage aar:storage root.temp.item.tag.CustomModelData set value 880002

data modify storage aar:storage root.temp.item.tag.ChargedProjectiles set value []
data modify storage aar:storage root.temp.item.tag.ChargedProjectiles insert -1 from storage aar:storage root.temp.next_proj
execute if data storage aar:storage root.temp.item.tag.Enchantments[{id:"minecraft:multishot"}] run function aar:item/windup_crossbow/use/multishot