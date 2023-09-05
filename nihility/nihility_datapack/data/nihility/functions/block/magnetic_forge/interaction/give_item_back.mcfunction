item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0] set from entity @s Item
data modify storage nihility:storage root.temp.data set from entity @s Item
execute as @a[advancements={nihility:technical/block/interact/magnetic_forge=true}] run function nihility:block/magnetic_forge/interaction/item_to_inventory