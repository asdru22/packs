execute as @e[type=#adv:projectile,nbt={life:0s},sort=nearest,tag=!adv.setup] run function adv:entity/projectile/vanilla/init
scoreboard players reset @s adv.use_bow