data remove storage cgn:macro root
data modify storage cgn:macro root.item set from entity @s Item

execute if data storage cgn:macro root.item.components run return run function cgn:item/vanilla/dispensable/axe_logic/macro_components with storage cgn:macro root.item
function cgn:item/vanilla/dispensable/axe_logic/macro with storage cgn:macro root.item