scoreboard players operation $crit_chance var = $base_crit_chance var
scoreboard players set $temp var 0

execute if data storage a:data root.hit{mainand_compatible:true} store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.crit_chance 10
scoreboard players operation $crit_chance var += $temp var

execute store result score $rng var run random value 0..1000
execute if score $rng var <= $crit_chance var run function a:combat/stats/crit_damage/get