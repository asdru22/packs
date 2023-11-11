data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:100b}]
function cgn:item/chargeable_armor/modify/main
loot replace entity @s armor.feet loot cgn:technical/copy_nbt/leather_boots