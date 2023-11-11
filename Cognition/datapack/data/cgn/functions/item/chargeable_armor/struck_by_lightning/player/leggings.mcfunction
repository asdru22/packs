data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:101b}]
function cgn:item/chargeable_armor/modify/main
loot replace entity @s armor.legs loot cgn:technical/copy_nbt/leather_leggings