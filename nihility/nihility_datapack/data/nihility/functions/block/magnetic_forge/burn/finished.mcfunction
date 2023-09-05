data modify storage nihility:storage root.temp.item set from entity @s Item
execute store result score count nihility.data run data get entity @s Item.Count
function nihility:block/magnetic_forge/burn/items
particle smoke ~ ~ ~ 0.25 0.25 0.25 0.05 10
data modify entity @s Item set from block ~ ~-1 ~ Items[0]
data merge entity @s {HasVisualFire:0b,PickupDelay:0s,NoGravity:0b,Invulnerable:0b}