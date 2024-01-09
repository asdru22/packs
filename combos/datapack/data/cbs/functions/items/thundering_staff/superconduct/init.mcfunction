tag @s add cbs.me
execute as @e[type=#cbs:target,tag=!cbs.me,distance=..30] at @s if block ~ ~ ~ water run summon lightning_bolt
tag @a remove cbs.me