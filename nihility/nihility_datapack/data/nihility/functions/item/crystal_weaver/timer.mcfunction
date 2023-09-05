execute as @e[type=#nihility:void_base,tag=nihility.void_spawn,distance=..10,dx=0,nbt={HurtTime:0s}] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function nihility:item/crystal_weaver/hit
scoreboard players add @s nihility.books 1
execute if entity @s[scores={nihility.books=8..}] run function nihility:item/crystal_weaver/remove