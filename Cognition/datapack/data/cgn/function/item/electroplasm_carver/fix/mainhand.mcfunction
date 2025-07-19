data remove storage cgn:macro root
data modify storage cgn:macro root set from entity @s SelectedItem
data modify storage cgn:macro root.slot set value "weapon.mainhand"

data modify storage cgn:macro root.id set value "minecraft:diamond_sword"

function cgn:technical/macros/loot/replace with storage cgn:macro root