execute as @e[type=#cbs:target,tag=!cbs.me,distance=..10,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s summon marker run function cbs:items/bow/arrow_rain/hit
execute unless block ~ ~ ~ #cbs:raycast_ignore summon marker run function cbs:items/bow/arrow_rain/hit
scoreboard players remove $dist cbs.dummy 1
execute if score $dist cbs.dummy matches 1.. positioned ^ ^ ^0.1 run function cbs:items/bow/arrow_rain/cast

execute if score $dist cbs.dummy matches 0 summon marker run function cbs:items/bow/arrow_rain/hit