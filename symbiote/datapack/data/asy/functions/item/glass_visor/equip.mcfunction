advancement revoke @s only asy:technical/item/glass_visor/equip
advancement grant @s only asy:minecraft/nether/cursed_crown
stopsound @s master minecraft:item.armor.equip_chain
data modify storage asy:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick
item modify entity @s armor.head asy:copy_nbt