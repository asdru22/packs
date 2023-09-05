scoreboard objectives add tfp.data dummy
scoreboard objectives add tfp.id dummy

scoreboard players set #air_toggle tfp.data 1
scoreboard players set -1 tfp.data -1


schedule function tfp:technical/second 1t replace