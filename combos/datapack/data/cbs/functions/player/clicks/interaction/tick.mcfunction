scoreboard players operation $temp cbs.dummy = @s cbs.id
tag @s add cbs.me
execute as @a at @s if score @s cbs.id = $temp cbs.dummy anchored eyes positioned ~ ~-4 ~ run tp @e[type=interaction,tag=cbs.me,tag=cbs.interaction,limit=1,sort=nearest] ^ ^ ^1
tag @s remove cbs.me