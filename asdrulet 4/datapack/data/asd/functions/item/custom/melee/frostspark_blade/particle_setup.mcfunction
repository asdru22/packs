tag @s add asd.particle.setup
scoreboard players set @s asd.stat.damage.base 13
data modify entity @s Motion set from entity @e[type=marker,tag=asd.entity.trig,limit=1] Pos
execute store result entity @s Motion[1] double 0.0005 run loot spawn ~ ~ ~ loot asd:technical/rng/random_1_100
scoreboard players operation @s asd.id = .id asd.d