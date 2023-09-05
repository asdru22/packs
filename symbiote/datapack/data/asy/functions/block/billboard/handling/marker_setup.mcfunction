tag @s remove asy.setup
scoreboard players set @s asy.x 0
scoreboard players set @s asy.y 0
scoreboard players operation @s asy.id = .temp asy.data
execute rotated as @s run function asy:block/billboard/handling/buttons