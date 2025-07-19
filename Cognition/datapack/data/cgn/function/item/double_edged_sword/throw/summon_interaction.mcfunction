data remove storage cgn:macro root
data modify storage cgn:macro root.uuid set from entity @s UUID
execute summon interaction run function cgn:item/double_edged_sword/throw/interaction with storage cgn:macro root