data remove storage cgn:macro root
data modify storage cgn:macro root.id set string storage smithed.crafter:input recipe[{count:1,components:{"minecraft:custom_data":{cgn:{ebonite_upgradeable:1b}}}}].components."minecraft:item_name" 34 -2
data modify storage cgn:macro root.item set from storage smithed.crafter:input recipe[{count:1,components:{"minecraft:custom_data":{cgn:{ebonite_upgradeable:1b}}}}]
function cgn:recipe/ebonite_upgrade/make with storage cgn:macro root
return 1