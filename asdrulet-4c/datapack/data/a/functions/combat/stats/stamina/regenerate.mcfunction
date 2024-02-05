scoreboard players set $temp var 200
scoreboard players operation $temp var += @s stat.stamina.current
scoreboard players operation $temp var *= 20 const
scoreboard players operation $temp var /= 1000 const
scoreboard players operation @s stat.stamina.current += $temp var
execute if score @s stat.stamina.current >= @s stat.stamina.max run scoreboard players operation @s stat.stamina.current = @s stat.stamina.max

execute if score @s[tag=stamina.slow_down] stat.stamina.current matches 1000.. run function a:combat/stats/stamina/speed_up

function a:combat/stats/stamina/update