scoreboard players operation $damage var = $base_damage var
scoreboard players set $temp var 0

execute if data storage a:data root.hit{mainand_compatible:true} store result score $temp var run data get storage a:data root.equipment.mainhand{weapon:true}.stats.damage 10
scoreboard players operation $damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.offhand{type:"shield"}.stats.damage 10
scoreboard players operation $damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.damage 10
scoreboard players operation $damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.chestplate.stats.damage 10
scoreboard players operation $damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.leggings.stats.damage 10
scoreboard players operation $damage var += $temp var

execute store result score $temp var run data get storage a:data root.equipment.boots.stats.damage 10
scoreboard players operation $damage var += $temp var
