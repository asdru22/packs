# for context, 10 luck is a lot
scoreboard players set $luck var 0

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.luck 10
scoreboard players operation $luck var += $temp var

execute store result storage a:data root.temp.param.luck double 0.01 run scoreboard players get $luck var
function a:combat/stats/luck/update with storage a:data root.temp.param

data remove storage a:data root.temp.param