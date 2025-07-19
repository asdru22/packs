tag @s add cgn.smoldering_vortex.triggered

item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":1}

tag @s add cgn.smoldering_vortex_temp

execute as @e[type=item,distance=0.6..5,tag=!smithed.entity,tag=!smithed.strict] at @s run function cgn:block/smoldering_vortex/trigger/as_item

tag @s remove cgn.smoldering_vortex_temp

stopsound @a[distance=..16] * minecraft:block.dispenser.dispense
stopsound @a[distance=..16] * minecraft:block.dispenser.launch
stopsound @a[distance=..16] * minecraft:block.dispenser.fail

playsound cgn:block.smoldering_vortex.trigger block @a[distance=..16]