# Targets entities within macroed distance

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=vrm.prevents_hoppers] at @s positioned ~ ~-1 ~ run function vrm:block/hopper_updating/fill

