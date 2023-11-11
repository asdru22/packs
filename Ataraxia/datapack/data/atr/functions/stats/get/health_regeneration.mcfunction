scoreboard players set $health_regeneration atr.int 4

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.health_regeneration
scoreboard players operation $health_regeneration atr.int += #temp atr.int

scoreboard players operation @s atr.stat.health_regeneration = $health_regeneration atr.int