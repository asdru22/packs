data remove storage aar:storage root.temp.item

data modify storage aar:storage root.temp.item set from entity @s Inventory[{Slot:-106b,tag:{aar:{}}}]
data modify storage aar:storage root.temp.item set from entity @s SelectedItem{tag:{aar:{}}}

function aar:item/warped_fungus_on_a_stick/item with storage aar:storage root.temp.item.tag.aar

scoreboard players reset @s aar.used_warped_fungus_on_a_stick