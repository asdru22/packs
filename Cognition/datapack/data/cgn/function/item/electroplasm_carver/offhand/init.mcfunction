tag @s add cgn.temp
execute as @e[type=fishing_bobber,distance=..5] run function cgn:item/electroplasm_carver/offhand/check_owner
tag @s remove cgn.temp
execute if entity @s[tag=cgn.electroplasm_carver,tag=cgn.electroplasm_carver.click] run function cgn:item/electroplasm_carver/use/click

stopsound @a[distance=..16] * minecraft:entity.fishing_bobber.throw