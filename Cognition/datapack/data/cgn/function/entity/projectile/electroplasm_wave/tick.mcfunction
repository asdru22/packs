execute if entity @s[tag=!cgn.projectile.setup] run return run function cgn:entity/projectile/setup {duration:30}

data modify storage cgn:temp root.electroplasm_wave set from entity @s item.components."minecraft:custom_data".cgn

execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] at @s run function cgn:entity/projectile/electroplasm_wave/hit with storage cgn:temp root.electroplasm_wave

tp @s ^ ^ ^0.33
execute if block ~ ~ ~ #cgn:full_collision run kill

particle dust{color:[0.298,0.651,0.596],scale:0.5} ^-0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal
particle dust{color:[0.298,0.651,0.596],scale:0.5} ^0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal