scoreboard players remove d.1 asd.d 1
particle end_rod
execute as @e[predicate=asd:entity/magic_cast_target,dx=0,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function asd:item/magic/hit
execute if score d.1 asd.d matches 1.. if score .hit asd.d matches 1 positioned ^ ^ ^.33 if block ~ ~ ~ #asd:passable run function asd:item/magic/item/test/cast