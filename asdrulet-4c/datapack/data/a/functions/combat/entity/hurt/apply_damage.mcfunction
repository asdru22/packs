## 2
# get damage * charge
$execute store result score $damage var run data get storage a:data root.hit.damage $(charge)
# defense
scoreboard players operation $damage_recieved var = $damage var

execute if score @s stat.defense matches 1.. run function a:combat/stats/defense/calc

scoreboard players operation @s stat.health.current -= $damage_recieved var

# init display
# setup data
data remove storage a:data root.display
execute store result storage a:data root.display.x double 0.1 run random value -5..5
execute store result storage a:data root.display.z double 0.1 run random value -5..5
# check health
function a:combat/entity/hurt/alive with storage a:data root.display
execute if score @s stat.health.current matches ..0 run function a:combat/entity/hurt/death