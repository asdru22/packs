execute in overworld positioned 0 -64 0 run function a:combat/player/equipment/get
function a:combat/stats/cast_cooldown/get

scoreboard players operation @s stat.cast_cooldown = $cast_cooldown var 

scoreboard players operation @s stat.stamina.current -= @s stat.stamina.consumed
function a:combat/stats/stamina/remove
