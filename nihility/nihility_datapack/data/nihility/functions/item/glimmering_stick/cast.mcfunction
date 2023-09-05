scoreboard players remove dist nihility.data 1
particle end_rod

execute as @e[type=#nihility:void_base,tag=nihility.void_spawn,distance=..10,dx=0,nbt={HurtTime:0s}] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function nihility:item/glimmering_stick/hit

execute if score dist nihility.data matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #nihility:passable run function nihility:item/glimmering_stick/cast