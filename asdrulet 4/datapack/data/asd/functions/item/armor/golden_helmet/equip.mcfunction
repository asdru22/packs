advancement revoke @s only asd:technical/item/golden_helmet/equip
stopsound @s master minecraft:item.armor.equip_gold
data modify storage asd:data root.temp.item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:carrot_on_a_stick
item modify entity @s armor.head asd:copy_nbt