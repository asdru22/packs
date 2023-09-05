data modify entity @s Owner set from storage asd:data root.temp.UUID
data modify entity @s Motion set from entity @e[type=marker,tag=asd.trig,limit=1] Pos
tp @e[type=marker,tag=asd.trig,limit=1] 0.0 0 0.0
tag @s add asd.setup