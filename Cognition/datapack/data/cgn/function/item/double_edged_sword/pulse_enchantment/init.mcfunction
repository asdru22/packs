scoreboard players set $temp cgn.dummy 0
data remove storage cgn:macro root
data modify storage cgn:macro root.uuid set from entity @s item.components."minecraft:custom_data".cgn.owner 
function cgn:item/double_edged_sword/pulse_enchantment/get_owner with storage cgn:macro root
execute if score $temp cgn.dummy matches 1 run function cgn:item/double_edged_sword/pulse_enchantment/hit