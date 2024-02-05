scoreboard players operation $temp var = @s stat.stamina.max
scoreboard players operation $temp var /= 400 const
scoreboard players operation @s stat.stamina.current -= $temp var
function a:combat/stats/stamina/remove