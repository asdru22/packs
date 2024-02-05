scoreboard players set $movement_speed var 10

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.movement_speed 10
scoreboard players operation $movement_speed var += $temp var

execute store result storage a:data root.temp.param.movement_speed double 0.01 run scoreboard players operation @s stat.movement_speed = $movement_speed var
function a:combat/stats/movement_speed/update with storage a:data root.temp.param

data remove storage a:data root.temp.param