scoreboard players operation $temp var = @s stat.health.max
scoreboard players operation $temp var /= 20 const

scoreboard players operation @s stat.health.current += $temp var 
execute if score @s stat.health.current >= @s stat.health.max run scoreboard players operation @s stat.health.current = @s stat.health.max

function a:combat/stats/health/update