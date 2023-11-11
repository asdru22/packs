#> Incoming Damage: $damage atr.int
# recieved dmg=(100*inc dmg)/(def+100)

scoreboard players set #temp atr.int 100
scoreboard players operation #temp atr.int += @s atr.stat.defense
scoreboard players operation $damage atr.int /= #temp atr.int