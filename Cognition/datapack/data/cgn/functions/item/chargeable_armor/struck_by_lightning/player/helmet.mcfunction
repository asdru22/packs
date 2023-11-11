data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
function cgn:item/chargeable_armor/modify/main
loot replace entity @s armor.head loot cgn:technical/copy_nbt/leather_helmet