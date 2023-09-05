scoreboard players remove dist asd.d 1
execute positioned ~ ~-0.5 ~ run function asd:particle/spawn/electricity
execute as @e[type=#asd:mobs,tag=!asd.ignore,tag=asd.entity.mob,dx=0,limit=1,sort=nearest,nbt={HurtTime:0s,Invulnerable:0b}] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function asd:effects/electrified/hit


execute if score dist asd.d matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #asd:passable run function asd:effects/electrified/cast