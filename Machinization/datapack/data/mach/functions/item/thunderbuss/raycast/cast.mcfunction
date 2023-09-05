particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove $range mach.data 1

execute as @e[type=!#mach:technical,tag=!mach.me,dx=0,nbt={HurtTime:0s},distance=..5] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] at @s run function mach:item/thunderbuss/hit

execute if score $range mach.data matches 1 if score $splits mach.data matches 1.. positioned ^ ^ ^0.1 run function mach:item/thunderbuss/raycast/change

execute if score $range mach.data matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #mach:passable run function mach:item/thunderbuss/raycast/cast