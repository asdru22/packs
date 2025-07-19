execute if block ~ ~ ~ #cgn:full_collision run return run function cgn:item/double_edged_sword/item_display_hit_block

tp @s[tag=!cgn.double_edged_sword.returning] ^ ^ ^0.13
execute if entity @s[tag=cgn.double_edged_sword.returning] run function cgn:item/double_edged_sword/bounce/move_to_owner with storage cgn:temp root.double_edged_sword
scoreboard players remove @s cgn.dummy2 1

execute positioned ~-0.9 ~-0.9 ~-0.9 as @n[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] run function cgn:item/double_edged_sword/hit with storage cgn:temp root.double_edged_sword

execute if score @s cgn.dummy2 matches 1.. at @s run function cgn:item/double_edged_sword/move_loop