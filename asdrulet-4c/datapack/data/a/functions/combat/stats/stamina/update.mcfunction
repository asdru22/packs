scoreboard players operation $temp var = @s stat.stamina.current
scoreboard players operation $temp var *= 20 const
execute store result storage a:data root.temp.stamina int 1 run scoreboard players operation $temp var /= @s stat.stamina.max
function a:combat/stats/stamina/update_bar with storage a:data root.temp