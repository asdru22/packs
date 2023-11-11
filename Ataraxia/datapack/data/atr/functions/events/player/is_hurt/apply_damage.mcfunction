execute unless entity @s[scores={atr.stat.defense=1..}] run scoreboard players operation $damage atr.int /= #100 atr.int 

execute if entity @s[scores={atr.stat.defense=1..}] run function atr:stats/calculate/defense

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Damage recieved: ","color":"white"},{"score":{"name":"$damage","objective":"atr.int"},"color":"red"}]

scoreboard players operation @s atr.stat.current_health -= $damage atr.int
execute if entity @s[scores={atr.stat.current_health=..0}] run function atr:events/mob/hurt_by_player/kill