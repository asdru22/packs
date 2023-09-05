advancement revoke @s only asy:technical/item/envoyant_egg
item modify entity @s weapon.mainhand asy:remove_one
execute as @e[type=villager,distance=..7,nbt={HurtTime:10s}] run function asy:item/envoyant_egg/add_tags