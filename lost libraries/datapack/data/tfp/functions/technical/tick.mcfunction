scoreboard players operation #air_toggle tfp.data *= -1 tfp.data
execute as @e[type=#tfp:affected/tick,tag=tfp.tick] at @s run function tfp:entity/tick