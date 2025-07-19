# Targets entities within macroed distance

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=haywire.prevents_hoppers] at @s positioned ~ ~-1 ~ run function haywire:block/hopper_updating/fill
