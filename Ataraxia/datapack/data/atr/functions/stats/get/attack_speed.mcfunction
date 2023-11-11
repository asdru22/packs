scoreboard players set $attack_speed atr.int 40

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.attack_speed
scoreboard players operation $attack_speed atr.int += #temp atr.int

execute store result storage atr:storage root.temp.passive.attack_speed double 0.1 run scoreboard players get $attack_speed atr.int