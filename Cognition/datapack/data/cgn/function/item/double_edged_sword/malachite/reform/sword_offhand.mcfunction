item modify entity @s weapon.offhand cgn:double_edged_malachite_sword/repair
data remove storage cgn:macro root
data modify storage cgn:macro root.item set from entity @s Inventory[{Slot:-106b}]
data modify storage cgn:macro root.slot set value "weapon.offhand"

function cgn:technical/macros/loot/replace with storage cgn:macro root