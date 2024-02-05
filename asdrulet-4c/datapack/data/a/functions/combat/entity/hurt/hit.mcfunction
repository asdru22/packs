## 1
execute store result score @s stat.health.base run data get entity @s Health
# get attack charge
execute store result storage a:data root.temp.param.charge double 0.1 run scoreboard players operation @s stat.health.old -= @s stat.health.base
execute if data storage a:data root.hit{vanilla_crit:true} run scoreboard players remove @s stat.health.old 5
data merge entity @s {Health:1000f}

function a:combat/entity/hurt/apply_damage with storage a:data root.temp.param