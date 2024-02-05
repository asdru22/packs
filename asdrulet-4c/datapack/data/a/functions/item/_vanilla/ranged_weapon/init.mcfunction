execute in overworld positioned 0 -64 0 run function a:combat/player/equipment/get
function a:combat/stats/projectile_speed/get

execute as @e[type=#a:projectile,tag=!processed,distance=..10,nbt={life:0s}] at @s run function a:item/_vanilla/ranged_weapon/as_projectile with storage a:data root.temp

scoreboard players reset @s use.bow
scoreboard players reset @s use.crossbow