scoreboard players remove distance nihility.data 1
particle dust 0.071 1.000 0.165 1

execute as @e[type=#nihility:void_base,tag=nihility.void_spawn,distance=..10,dx=0,nbt={HurtTime:0s},limit=1] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function nihility:item/slime_slinger_staff/hit

execute if score distance nihility.data matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #nihility:passable run function nihility:item/slime_slinger_staff/mob_cast