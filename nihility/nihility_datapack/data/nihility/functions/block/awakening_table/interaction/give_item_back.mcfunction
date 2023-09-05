item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0] set from entity @s Item
data modify storage nihility:storage root.temp.data set from entity @s Item
execute as @a[advancements={nihility:technical/block/interact/awakening_table=true}] run function nihility:block/awakening_table/interaction/item_to_inventory