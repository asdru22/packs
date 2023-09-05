stopsound @s * minecraft:item.armor.equip_leather 
data modify storage adv:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:leather_horse_armor
item modify entity @s armor.head adv:copy_nbt
advancement revoke @s only adv:technical/inventory_changed/hat/equip