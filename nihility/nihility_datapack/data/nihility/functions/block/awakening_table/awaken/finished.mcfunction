data modify storage nihility:storage root.temp.item set from entity @s Item
execute store result score count nihility.data run data get entity @s Item.Count
function nihility:block/awakening_table/awaken/item_modifying
particle end_rod ~ ~ ~ 0.25 0.25 0.25 0.05 10
data merge entity @s {Glowing:0b,PickupDelay:0s,NoGravity:0b,Invulnerable:0b}