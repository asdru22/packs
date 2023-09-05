scoreboard players set run nihility.data 1
summon item ~ ~.5 ~ {Tags:["nihility.item_offer"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:2042105201,Invulnerable:1b,NoGravity:1b}
execute as @e[type=item,tag=nihility.item_offer,tag=!nihility.setup] run function nihility:block/magnetic_forge/interaction/item_setup