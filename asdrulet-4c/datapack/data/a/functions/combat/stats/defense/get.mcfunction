scoreboard players operation $defense var = $base_defense var

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.defense 10
scoreboard players operation $defense var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.defense 10
scoreboard players operation $defense var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.defense 10
scoreboard players operation $defense var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.defense 10
scoreboard players operation $defense var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.defense 10
scoreboard players operation $defense var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.defense 10
scoreboard players operation $defense var += $temp var

scoreboard players operation @s stat.defense = $defense var
