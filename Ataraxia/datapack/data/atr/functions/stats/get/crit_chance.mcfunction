scoreboard players set $crit_chance atr.int 20

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.crit_chance
scoreboard players operation $crit_chance atr.int += #temp atr.int

#scoreboard players set $crit_chance atr.int 90

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Crit Chance: ","color":"white"},{"score":{"name":"$crit_chance","objective":"atr.int"},"color":"red"}]
# min is 0
scoreboard players operation $crit_chance atr.int > #0 atr.int
execute store result score #temp atr.int run random value 1..100
execute if score $crit_chance atr.int >= #temp atr.int run function atr:stats/get/crit_damage