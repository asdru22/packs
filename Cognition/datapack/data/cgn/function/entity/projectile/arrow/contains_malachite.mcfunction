data modify storage cgn:storage root.temp.owner set from entity @s Owner

execute as @e[type=item,distance=..2] if items entity @s contents minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite"}'] run kill
kill @s 

scoreboard players operation $temp cgn.dummy < #10 cgn.dummy

execute if entity @s[nbt={Fire:-1s}] run return run function cgn:entity/projectile/arrow/explode_malachite/main
execute positioned ~ ~-0.2 ~ run function cgn:entity/projectile/arrow/burn_malachite/main