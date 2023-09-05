execute as @e[type=#adv:affected/tick,tag=adv.tick] at @s run function adv:entity/tick
execute as @a at @s run function adv:entity/player/tick

scoreboard players operation $visfix adv.data *= -1 adv.data

scoreboard players add #timer adv.data 1
execute if score #timer adv.data matches 100 run scoreboard players set #timer adv.data 0