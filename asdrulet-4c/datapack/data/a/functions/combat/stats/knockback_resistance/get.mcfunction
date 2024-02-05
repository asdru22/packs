scoreboard players set $knockback_resistance var 0

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.knockback_resistance 10
scoreboard players operation $knockback_resistance var += $temp var

execute store result storage a:data root.temp.param.knockback_resistance double 0.01 run scoreboard players get $knockback_resistance var
function a:combat/stats/knockback_resistance/update with storage a:data root.temp.param

data remove storage a:data root.temp.param