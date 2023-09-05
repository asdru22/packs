scoreboard players remove distance nihility.data 1
execute if score bounces nihility.data matches 0 run particle dust 1 1 1 1
execute if score bounces nihility.data matches 1 run particle dust 0.639 0.996 0.639 1
execute if score bounces nihility.data matches 2 run particle dust 0.302 1.000 0.369 1

execute if score bounces nihility.data matches ..3 as @e[type=slime,tag=nihility.slime,distance=..5,dx=0,tag=!nihility.bounce,sort=nearest,limit=1] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] positioned ~0.75 ~0.75 ~0.75 run function nihility:item/slime_slinger_staff/bounce
execute if score bounces nihility.data matches ..3 if score distance nihility.data matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #nihility:passable run function nihility:item/slime_slinger_staff/cast