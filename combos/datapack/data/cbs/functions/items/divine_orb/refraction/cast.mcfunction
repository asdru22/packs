execute as @e[type=#cbs:target,tag=!cbs.me,distance=..4,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function cbs:items/divine_orb/refraction/hit
execute unless block ~ ~ ~ #cbs:raycast_ignore run function cbs:items/divine_orb/refraction/hit
scoreboard players remove $dist cbs.dummy 1
execute if score $dist cbs.dummy matches 0 run function cbs:items/divine_orb/refraction/hit
execute if score $dist cbs.dummy matches 1.. positioned ^ ^ ^0.1 run function cbs:items/divine_orb/refraction/cast
