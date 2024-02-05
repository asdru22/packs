advancement revoke @s only dsl:technical/inventory_changed/hat_equip
stopsound @s master minecraft:item.armor.equip_iron
playsound minecraft:item.armor.equip_leather player @a[distance=..16]
data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.head loot dsl:technical/copy_nbt/warped_fungus_on_a_stick