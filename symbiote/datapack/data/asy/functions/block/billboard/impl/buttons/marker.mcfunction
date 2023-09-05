scoreboard players set .add asy.data 50
execute if score .sneak asy.data matches 1 run scoreboard players operation .add asy.data *= const.5 asy.data
execute if score .flip asy.data matches 1 run scoreboard players operation .add asy.data *= const.-1 asy.data

execute if score .move asy.data matches 2 if score @s asy.x matches -450.. run scoreboard players operation @s asy.x -= .add asy.data
execute if score .move asy.data matches 1 if score @s asy.x matches ..450 run scoreboard players operation @s asy.x += .add asy.data
execute if score .move asy.data matches 3 if score @s asy.y matches -450.. run scoreboard players operation @s asy.y -= .add asy.data
execute if score .move asy.data matches 4 if score @s asy.y matches ..450 run scoreboard players operation @s asy.y += .add asy.data

scoreboard players set .override asy.data 1
execute positioned ~1 ~0.25 ~0.25 run function asy:block/billboard/impl/buttons/override
scoreboard players reset .override asy.data

execute positioned ~-0.4 ~-1.25 ~-1 run tag @e[type=armor_stand,tag=asy.display,dx=0,dy=2,dz=2] add asy.save
execute as @e[type=armor_stand,tag=asy.display,tag=asy.billboard] if score @s asy.id = .temp asy.data at @s run function asy:block/billboard/impl/buttons/clear
execute as @e[type=slime,tag=asy.click,tag=asy.setup] run function asy:block/billboard/handling/slime_setup