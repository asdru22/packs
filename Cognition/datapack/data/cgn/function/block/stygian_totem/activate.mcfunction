tag @s add cgn.stygian_totem.active
data modify entity @s item.components."minecraft:item_model" set value "cgn:block/stygian_totem_active"

stopsound @a[distance=..16] * minecraft:block.dispenser.dispense
stopsound @a[distance=..16] * minecraft:block.dispenser.launch
stopsound @a[distance=..16] * minecraft:block.dispenser.fail