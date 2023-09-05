data modify storage nihility:storage root.temp.check set from storage nihility:storage root.temp.item.tag.Items[0]
scoreboard players reset result nihility.data
execute if data storage nihility:storage root.temp.check{id:"minecraft:arrow"} run scoreboard players set result nihility.data 1
execute if data storage nihility:storage root.temp.check{id:"minecraft:tipped_arrow"} run scoreboard players set result nihility.data 1
execute if data storage nihility:storage root.temp.check{id:"minecraft:spectral_arrow"} run scoreboard players set result nihility.data 1
execute if data storage nihility:storage root.temp.check{id:"minecraft:firework_rocket"} run scoreboard players set result nihility.data 1

execute unless score result nihility.data matches 1 if data storage nihility:storage root.temp.check.id run function nihility:item/quiver/invalid_projectile
execute if score result nihility.data matches 1 run function nihility:item/quiver/add_projectile