scoreboard players set $endurance atr.int 0

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.endurance
scoreboard players operation $endurance atr.int += #temp atr.int

execute store result storage atr:storage root.temp.passive.endurance double 0.01 run scoreboard players get $endurance atr.int