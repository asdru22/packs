scoreboard players remove $temp cgn.dummy 1
execute at @s unless block ^ ^ ^0.07 #cgn:full_collision run tp @s ^ ^ ^0.07

execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] at @s run function cgn:entity/projectile/double_edged_sword_pulse/hit with storage cgn:temp root.double_edged_sword

execute if score $temp cgn.dummy matches 1.. run function cgn:entity/projectile/double_edged_sword_pulse/move_raycast