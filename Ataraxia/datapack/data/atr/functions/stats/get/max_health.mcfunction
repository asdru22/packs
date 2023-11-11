scoreboard players set $max_health atr.int 50

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.max_health
scoreboard players operation $max_health atr.int += #temp atr.int

scoreboard players operation @s atr.stat.max_health = $max_health atr.int
# the holy operation
scoreboard players operation @s atr.stat.current_health < @s atr.stat.max_health

# min is 1
scoreboard players operation $max_health atr.int > #1 atr.int