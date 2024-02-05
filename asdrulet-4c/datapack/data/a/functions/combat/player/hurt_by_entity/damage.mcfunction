scoreboard players operation $damage_recieved var = $damage var

execute if score @s stat.defense matches 1.. run function a:combat/stats/defense/calc

scoreboard players operation @s stat.health.current -= $damage_recieved var
function a:combat/stats/health/update
scoreboard players set @s regeneration_cooldown 15

execute if score @s stat.health.current matches ..0 run function a:combat/player/death/init