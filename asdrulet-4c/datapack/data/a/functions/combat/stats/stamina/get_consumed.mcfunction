scoreboard players set @s stat.stamina.consumed 0

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.stamina_used 10
scoreboard players operation @s stat.stamina.consumed += $temp var

execute if score @s stat.stamina.consumed matches ..0 run scoreboard players set @s stat.stamina.consumed 1