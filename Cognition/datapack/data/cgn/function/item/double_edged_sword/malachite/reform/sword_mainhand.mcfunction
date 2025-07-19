item modify entity @s weapon.mainhand cgn:double_edged_malachite_sword/repair
data remove storage cgn:macro root
data modify storage cgn:macro root.item set from entity @s SelectedItem
data modify storage cgn:macro root.slot set value "weapon.mainhand"

function cgn:technical/macros/loot/replace with storage cgn:macro root