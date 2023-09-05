execute positioned ~ ~.7 ~ as @e[type=item,tag=nihility.offered_item,tag=nihility.setup,limit=1,sort=nearest] run data merge entity @s {PickupDelay:0s,Glowing:0b,NoGravity:0b}

scoreboard players operation id nihility.data = @s nihility.id
execute as @e[type=creeper,tag=nihility.battery.display,scores={nihility.id=1..}] if score @s nihility.id = id nihility.data run function nihility:block/battery/unlink
kill @s