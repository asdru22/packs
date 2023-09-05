scoreboard players remove @s nihility.void_score 1
execute if entity @s[tag=nihility.entity.sculker] run function nihility:entity/sculker/main
execute if entity @s[tag=nihility.entity.dechanter] run function nihility:entity/dechanter/main

execute if score @s nihility.void_score matches 0 run scoreboard players reset @s nihility.void_score