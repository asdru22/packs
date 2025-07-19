execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.midnight_rose"}'] run function cgn:block/midnight_rose/place_potted

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.wispthorn"}'] run function cgn:block/wispthorn/place_potted

item modify entity @s[gamemode=!creative] weapon.mainhand cgn:decrease_count