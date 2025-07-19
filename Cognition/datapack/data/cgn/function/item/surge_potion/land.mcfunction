data remove storage cgn:macro root
data modify storage cgn:macro root.owner set from entity @s data.cgn.owner

execute align xyz as @n[type=item_display,tag=cgn.greek_fire,dx=0] at @s run function cgn:block/greek_fire/pyroplasm/make with storage cgn:macro root

execute if data storage cgn:storage root.temp.item{id:"minecraft:splash_potion"} run return run execute as @a[distance=..2] run function cgn:entity/player/electroplasm/add {amount:20}

execute summon area_effect_cloud run function cgn:item/surge_potion/lingering