execute store result score $defense atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.defense

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.defense
scoreboard players operation $defense atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.defense
scoreboard players operation $defense atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.defense
scoreboard players operation $defense atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.defense
scoreboard players operation $defense atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.defense
scoreboard players operation $defense atr.int += #temp atr.int

# min is 0
scoreboard players operation $defense atr.int > #0 atr.int

scoreboard players operation @s atr.stat.defense = $defense atr.int