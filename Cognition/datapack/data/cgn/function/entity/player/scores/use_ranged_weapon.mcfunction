execute if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/use/tick

tag @s add cgn.used_ranged_weapon
execute as @e[type=#arrows,nbt={life:0s},tag=!cgn.tick,distance=..6] run function cgn:entity/projectile/arrow/setup
tag @s remove cgn.used_ranged_weapon
scoreboard players reset @s cgn.used_crossbow
scoreboard players reset @s cgn.used_bow