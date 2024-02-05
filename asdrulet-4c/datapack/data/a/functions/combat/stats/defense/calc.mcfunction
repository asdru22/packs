scoreboard players operation $damage_recieved var *= 100 const
scoreboard players set #temp var 100
scoreboard players operation #temp var += @s stat.defense
scoreboard players operation $damage_recieved var /= #temp var