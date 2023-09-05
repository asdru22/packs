scoreboard players remove $bounce mach.data 1

execute unless block ~0.5 ~ ~ #mach:passable store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ #mach:passable store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ #mach:passable store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ #mach:passable store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 #mach:passable run function mach:item/midnight_howl/cast/z_plane
execute unless block ~ ~ ~-0.5 #mach:passable run function mach:item/midnight_howl/cast/z_plane

execute rotated as @s run function mach:item/midnight_howl/cast/loop