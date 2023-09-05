execute if score @s mach.using_item matches 15.. run function mach:item/midnight_howl/tick
execute if score @s mach.using_item matches 1 run playsound minecraft:block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 0.5 0.8

execute if score @s mach.using_item matches 16.. run playsound minecraft:block.beacon.power_select player @a[distance=..10] ~ ~ ~ 0.5 2