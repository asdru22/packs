xp set @s 0 points
xp set @s 167 levels

data remove storage a:data root.temp
execute if score @s stat.health.current matches ..0 run scoreboard players set @s stat.health.current 0
scoreboard players operation #temp var = @s stat.health.current
scoreboard players operation #temp var *= 600 const 
execute store result storage a:data root.temp.xp int 1 run scoreboard players operation #temp var /= @s stat.health.max

function a:combat/stats/health/bar with storage a:data root.temp