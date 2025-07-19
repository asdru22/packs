data remove storage cgn:macro root
data modify storage cgn:macro root.item set from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{cgn:{charged:false}}}}]
function cgn:technical/macros/loot/custom_crafter with storage cgn:macro root.item
item modify block ~ ~ ~ container.16 cgn:emberlash/charge
return 1