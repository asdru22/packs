scoreboard players set $movement_speed atr.int 10

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.movement_speed
scoreboard players operation $movement_speed atr.int += #temp atr.int

execute store result storage atr:storage root.temp.passive.movement_speed double 0.01 run scoreboard players get $movement_speed atr.int