scoreboard players operation $max_stamina var = $base_stamina var

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.max_stamina 10
scoreboard players operation $max_stamina var += $temp var

scoreboard players operation @s stat.stamina.max = $max_stamina var