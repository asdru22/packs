scoreboard players remove @s asd.stat.electricity.current 50
scoreboard players operation .id asd.d = @s asd.id
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^0.5 {Tags:["asd.entity.trig"]}
execute positioned ~ ~.7 ~ positioned ^ ^ ^.5 run function asd:item/custom/melee/frostspark_blade/summon_particle

kill @e[type=marker,tag=asd.entity.trig]

tag @s add asd.ability.frostspark_blade
tag @s add asd.ability
item modify entity @s weapon.mainhand asd:custom/frostspark_blade

execute positioned ~ ~1 ~ run particle minecraft:item diamond_sword{CustomModelData:4} ^ ^ ^.25 0.2 0.2 .2 0 10