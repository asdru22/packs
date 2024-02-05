scoreboard players set $cast_cooldown var 0

execute store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.cast_cooldown
scoreboard players operation $cast_cooldown var += $temp var