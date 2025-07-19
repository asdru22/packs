data remove storage cgn:macro root
data modify storage cgn:macro root.item set from entity @s item
function cgn:technical/macros/loot/spawn with storage cgn:macro root.item
execute on passengers run kill
kill