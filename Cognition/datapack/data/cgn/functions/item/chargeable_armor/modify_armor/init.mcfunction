data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:100b}]
function cgn:item/chargeable_armor/modify_armor/modify_charge
loot replace entity @s armor.feet loot cgn:technical/copy_nbt/leather_boots

data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:101b}]
function cgn:item/chargeable_armor/modify_armor/modify_charge
loot replace entity @s armor.legs loot cgn:technical/copy_nbt/leather_leggings

data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:102b}]
function cgn:item/chargeable_armor/modify_armor/modify_charge
loot replace entity @s armor.chest loot cgn:technical/copy_nbt/leather_chestplate

data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
function cgn:item/chargeable_armor/modify_armor/modify_charge
loot replace entity @s armor.head loot cgn:technical/copy_nbt/leather_helmet
