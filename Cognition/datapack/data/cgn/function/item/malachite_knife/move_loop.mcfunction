execute if block ~ ~ ~ #cgn:full_collision run return run function cgn:item/malachite_knife/land with storage cgn:temp root.malachite_knife
tp @s ^ ^ ^0.2
scoreboard players remove @s cgn.dummy2 1

execute positioned ~-0.99 ~-0.99 ~-0.99 as @n[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] at @s run function cgn:item/malachite_knife/hit/main with storage cgn:temp root.malachite_knife

execute if score @s cgn.dummy2 matches 1.. at @s run function cgn:item/malachite_knife/move_loop