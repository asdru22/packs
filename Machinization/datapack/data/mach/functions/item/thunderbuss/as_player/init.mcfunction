playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1.8
scoreboard players set $range mach.data 5
scoreboard players set $splits mach.data 10
tag @s add mach.me
execute anchored eyes run function mach:item/thunderbuss/raycast/cast
tag @s remove mach.me
tag @s add mach.item_cooldown