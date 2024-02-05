execute store result storage a:data root.temp.param.movement_speed double 0.005 run scoreboard players get @s stat.movement_speed
function a:combat/stats/movement_speed/update with storage a:data root.temp.param

tag @s add stamina.slow_down