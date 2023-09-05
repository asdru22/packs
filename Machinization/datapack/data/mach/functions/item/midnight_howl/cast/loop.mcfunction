particle sculk_charge_pop ~ ~ ~ ^ ^ ^1000000 0.0000005 0

execute if score $range mach.data matches ..294 as @e[type=!#mach:technical,dx=0,nbt={HurtTime:0s},distance=..5] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] at @s run function mach:item/midnight_howl/hit


scoreboard players remove $range mach.data 1
execute if score $bounce mach.data matches 1.. unless block ^ ^ ^0.25 #mach:passable run function mach:item/midnight_howl/cast/bounce
execute if score $range mach.data matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #mach:passable run function mach:item/midnight_howl/cast/loop
kill @s