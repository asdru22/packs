execute if score .move nihility.data matches 1 if score @s nihility.treeZ matches -450.. run scoreboard players remove @s nihility.treeZ 50
execute if score .move nihility.data matches 2 if score @s nihility.treeZ matches ..450 run scoreboard players add @s nihility.treeZ 50
execute if score .move nihility.data matches 3 if score @s nihility.treeX matches -450.. run scoreboard players remove @s nihility.treeX 50
execute if score .move nihility.data matches 4 if score @s nihility.treeX matches ..450 run scoreboard players add @s nihility.treeX 50

scoreboard players set .override nihility.data 1
execute positioned ~ ~1 ~ run function nihility:entity/player/tree/impl/buttons/override
scoreboard players reset .override nihility.data

execute positioned ~-2.5 ~1 ~-2.5 run tag @e[type=villager,tag=nihility.button,tag=nihility.tree,dx=4,dy=0,dz=4] add nihility.save
execute as @e[type=villager,tag=nihility.button,tag=nihility.tree] if score @s nihility.id = .temp nihility.data at @s run function nihility:entity/player/tree/impl/buttons/clear
