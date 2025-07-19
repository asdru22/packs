execute unless block ~ ~ ~ air run return fail
data remove storage cgn:macro root
data modify storage cgn:macro root.sherds set value [] 
data modify storage cgn:macro root.sherds set from entity @s Item.components."minecraft:pot_decorations" 
function cgn:item/vanilla/dispensable/decorated_pot_macro with storage cgn:macro root
kill @s