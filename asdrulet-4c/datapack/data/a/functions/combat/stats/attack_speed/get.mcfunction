execute if data storage a:data root.equipment.mainhand{type:"melee"} store result score $attack_speed var run data get storage a:data root.equipment.mainhand.stats.attack_speed 10
execute unless data storage a:data root.equipment.mainhand{type:"melee"} run scoreboard players set $attack_speed var 40

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.attack_speed 10
scoreboard players operation $attack_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.attack_speed 10
scoreboard players operation $attack_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.attack_speed 10
scoreboard players operation $attack_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.attack_speed 10
scoreboard players operation $attack_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.attack_speed 10
scoreboard players operation $attack_speed var += $temp var

execute store result storage a:data root.temp.param.attack_speed double 0.1 run scoreboard players get $attack_speed var
function a:combat/stats/attack_speed/update with storage a:data root.temp.param

data remove storage a:data root.temp.param