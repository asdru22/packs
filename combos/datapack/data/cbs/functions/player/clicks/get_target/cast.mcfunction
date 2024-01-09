execute as @e[type=#cbs:target,tag=!cbs.me,distance=..10,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function cbs:player/clicks/get_target/hit with storage cbs:storage root.temp
scoreboard players remove $dist cbs.dummy 1
execute if score $dist cbs.dummy matches 1.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #cbs:raycast_ignore run function cbs:player/clicks/get_target/cast