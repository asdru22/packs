item modify entity @a[gamemode=!creative,gamemode=!spectator,advancements={nihility:technical/block/interact/voidlinker=true}] weapon.mainhand nihility:remove_one
scoreboard players set temp nihility.data 1
execute as @e[type=item,tag=nihility.offered_item,tag=nihility.setup,limit=1,sort=nearest] at @s run function nihility:block/voidlinker/place/give_back
summon item ~ ~ ~ {Tags:["nihility.offered_item"],Item:{id:"stone",Count:1b},NoGravity:1b,PickupDelay:-19999998,Glowing:1b}
execute as @e[type=item,tag=nihility.offered_item,tag=!nihility.setup] run function nihility:block/voidlinker/place/setup_item
execute unless score @s nihility.id2 matches 1.. store result score @s nihility.id2 run scoreboard players add id2 nihility.data 1