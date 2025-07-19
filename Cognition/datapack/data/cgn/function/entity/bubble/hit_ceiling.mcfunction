execute if block ~ ~1.5 ~ #cgn:bubble/pops run return run function cgn:entity/bubble/pop
execute on vehicle run attribute @s gravity base set 0
execute on vehicle run data merge entity @s {Motion:[0d,0d,0d]}
tag @s add cgn.bubble.hit_ceiling