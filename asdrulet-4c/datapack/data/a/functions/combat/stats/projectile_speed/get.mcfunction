scoreboard players set $projectile_speed var 2000

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.projectile_speed 10
scoreboard players operation $projectile_speed var += $temp var

data remove storage a:data root.temp
execute store result storage a:data root.temp.vel_mult double 10 run scoreboard players get $projectile_speed var