execute if score @s stat.stamina.current matches ..0 run scoreboard players set @s stat.stamina.current 0
execute if score @s[tag=!stamina.slow_down] stat.stamina.current matches ..1 run function a:combat/stats/stamina/slow_down

function a:combat/stats/stamina/update