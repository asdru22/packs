execute as @a[distance=..10,dx=0,nbt={HurtTime:0s}] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] at @s run function nihility:entity/sculker/hit

particle sonic_boom
scoreboard players remove dist nihility.data 1
execute if score dist nihility.data matches 1.. positioned ^ ^ ^1 run function nihility:entity/sculker/cast