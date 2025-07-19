data remove storage cgn:macro root
data modify storage cgn:macro root.owner set from entity @s UUID
execute as @e[type=marker,tag=cgn.malachite_fragment,tag=!cgn.malachite_fragment.return] run function cgn:item/double_edged_sword/malachite/tag_attempt with storage cgn:macro root 