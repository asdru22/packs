data remove storage cgn:macro root
data modify storage cgn:macro root.item set from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{cgn:{no_blades:1b}}}}]
data remove storage cgn:macro root.item.components."minecraft:custom_data".cgn.no_blades
data remove storage cgn:macro root.item.components."minecraft:custom_data".cgn.usable
function cgn:technical/macros/loot/custom_crafter with storage cgn:macro root.item
item modify block ~ ~ ~ container.16 cgn:double_edged_malachite_sword/repair
return 1