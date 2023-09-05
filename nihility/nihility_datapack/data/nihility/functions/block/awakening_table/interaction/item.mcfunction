scoreboard players set run nihility.data 1
summon item ~ ~.5 ~ {Tags:["nihility.item_augment"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:2042105201,Invulnerable:1b,NoGravity:1b}
execute as @e[type=item,tag=nihility.item_augment,tag=!nihility.setup] run function nihility:block/awakening_table/interaction/item_setup