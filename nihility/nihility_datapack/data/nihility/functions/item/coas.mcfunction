data modify storage nihility:storage root.temp.item set from entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] Inventory[{Slot:-106b}]
data modify storage nihility:storage root.temp.item set from entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] SelectedItem
execute if data storage nihility:storage root.temp.item.tag.nihility{requires_ammo:1b} if predicate nihility:entity/player/is_holding_ammo run function nihility:item/requires_ammo

## Airship
execute if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:airship"} run function nihility:item/airship/main
## Totem
execute if data storage nihility:storage root.temp.item.tag.nihility{totem:1b} run function nihility:item/totem/main


scoreboard players reset @s nihility.use_coas