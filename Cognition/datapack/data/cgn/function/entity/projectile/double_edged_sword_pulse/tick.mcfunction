data modify storage cgn:temp root.double_edged_sword set from entity @s item.components."minecraft:custom_data".cgn 

execute if entity @s[scores={cgn.animation_timer=0},tag=!cgn.double_edged_sword.pulse.hit_ground] run return run function cgn:entity/projectile/double_edged_sword_pulse/drop_item

execute if entity @s[tag=cgn.double_edged_sword.pulse.hit_ground] unless block ^ ^ ^0.5 #cgn:full_collision run return run function cgn:entity/projectile/double_edged_sword_pulse/drop_item

execute if block ^ ^ ^0.5 #cgn:full_collision run return run execute if entity @s[tag=!cgn.double_edged_sword.pulse.hit_ground] run function cgn:entity/projectile/double_edged_sword_pulse/hit_block

scoreboard players set $temp cgn.dummy 20
function cgn:entity/projectile/double_edged_sword_pulse/move_raycast