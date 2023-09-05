scoreboard players reset burn nihility.data
execute store success score burn nihility.data if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:rescinded_ore"} run loot replace block ~ ~-1 ~ container.0 loot nihility:item/rescinded_bar
execute store success score burn nihility.data if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:magnetite"} run loot replace block ~ ~-1 ~ container.0 loot nihility:item/magnetite_bar
execute store success score burn nihility.data if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:kindling_crystal"} run loot replace block ~ ~-1 ~ container.0 loot nihility:item/rekindled_crystal
execute store success score burn nihility.data if data storage nihility:storage root.temp.item{id:"minecraft:lapis_lazuli"} run loot replace block ~ ~-1 ~ container.0 loot nihility:item/lapis_lightzuli

execute unless score burn nihility.data matches 1 run loot replace block ~ ~-1 ~ container.0 loot nihility:item/ash

execute store result block ~ ~-1 ~ Items[0].Count byte 1 run scoreboard players get count nihility.data