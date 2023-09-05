scoreboard players set .add asd.d 50
execute if score .sneak asd.d matches 1 run scoreboard players operation .add asd.d *= const.5 asd.d
execute if score .flip asd.d matches 1 run scoreboard players operation .add asd.d *= const.-1 asd.d

execute if score .move asd.d matches 2 if score @s asd.x matches -450.. run scoreboard players operation @s asd.x -= .add asd.d
execute if score .move asd.d matches 1 if score @s asd.x matches ..450 run scoreboard players operation @s asd.x += .add asd.d
execute if score .move asd.d matches 3 if score @s asd.y matches -450.. run scoreboard players operation @s asd.y -= .add asd.d
execute if score .move asd.d matches 4 if score @s asd.y matches ..450 run scoreboard players operation @s asd.y += .add asd.d

scoreboard players set .override asd.d 1
execute positioned ~1 ~0.25 ~0.25 run function asd:block/billboard/impl/buttons/override
scoreboard players reset .override asd.d

execute as @e[type=slime,tag=asd.click] run function asd:block/billboard/impl/buttons/kill

execute positioned ~-0.4 ~-1.25 ~-1 run tag @e[type=armor_stand,tag=asd.display,dx=0,dy=2,dz=2] add asd.save
execute as @e[type=armor_stand,tag=asd.display,tag=asd.billboard] at @s run function asd:block/billboard/impl/buttons/clear
execute as @e[type=slime,tag=asd.click,tag=asd.setup] run function asd:block/billboard/handling/slime_setup