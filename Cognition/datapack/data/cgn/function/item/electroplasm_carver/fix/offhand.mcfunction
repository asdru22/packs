data remove storage cgn:macro root
data modify storage cgn:macro root set from entity @s Inventory[{Slot:-106b}]
data modify storage cgn:macro root.slot set value "weapon.offhand"

data modify storage cgn:macro root.id set value "minecraft:fishing_rod"

function cgn:technical/macros/loot/replace with storage cgn:macro root