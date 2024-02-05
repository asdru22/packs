scoreboard players operation $crit_damage var = $base_crit_damage var
scoreboard players set $temp var 0

execute if data storage a:data root.hit{mainand_compatible:true} store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.crit_damage 10
scoreboard players operation $crit_damage var += $temp var

data modify storage a:data root.hit.crit set value true
execute store result storage a:data root.temp.param.crit_damage int 1 run scoreboard players get $crit_damage var
function a:combat/stats/crit_damage/multiply_damage with storage a:data root.temp.param
