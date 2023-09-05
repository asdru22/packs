execute as @a at @s run function asd:player/tick
scoreboard players operation vsfix asd.d *= const.-1 asd.d

execute as @e[type=#asd:all,tag=asd.1tick,type=!player] at @s run function asd:entity/tick