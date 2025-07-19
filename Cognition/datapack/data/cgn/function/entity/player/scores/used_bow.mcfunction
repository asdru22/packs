tag @s add cgn.me
execute as @n[type=#arrows,nbt={life:0s},tag=!cgn.tick] run function cgn:entity/projectile/arrow/setup
scoreboard players reset @s cgn.used_bow
tag @s remove cgn.me