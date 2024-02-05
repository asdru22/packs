scoreboard players operation $max_health var = $base_health var

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.max_health 10
scoreboard players operation $max_health var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.max_health 10
scoreboard players operation $max_health var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.max_health 10
scoreboard players operation $max_health var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.max_health 10
scoreboard players operation $max_health var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.max_health 10
scoreboard players operation $max_health var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.max_health 10
scoreboard players operation $max_health var += $temp var

scoreboard players operation @s stat.health.max = $max_health var
execute if score @s stat.health.current >= @s stat.health.max run scoreboard players operation @s stat.health.current = @s stat.health.max

function a:combat/stats/health/update