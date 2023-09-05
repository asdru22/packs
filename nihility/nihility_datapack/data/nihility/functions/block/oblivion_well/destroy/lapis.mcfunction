execute store result score count nihility.data run data get entity @s ArmorItems[3].tag.nihility.lapis

summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b},Tags:["nihility.temp"]}
execute as @e[type=item,tag=nihility.temp] run function nihility:block/oblivion_well/destroy/lapis_setup