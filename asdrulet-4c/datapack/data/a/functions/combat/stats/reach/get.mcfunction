execute if data storage a:data root.equipment.mainhand{weapon:true} store result score $reach var run data get storage a:data root.equipment.mainhand.stats.reach 10
execute unless data storage a:data root.equipment.mainhand{weapon:true} run scoreboard players set $reach var 30

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.reach 10
scoreboard players operation $reach var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.reach 10
scoreboard players operation $reach var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.reach 10
scoreboard players operation $reach var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.reach 10
scoreboard players operation $reach var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.reach 10
scoreboard players operation $reach var += $temp var

execute store result storage a:data root.temp.param.reach double 0.1 run scoreboard players get $reach var
function a:combat/stats/reach/update with storage a:data root.temp.param

data remove storage a:data root.temp.param