execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.ranged_damage
scoreboard players operation $damage atr.int += #temp atr.int

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Raw Ranged Damage: ","color":"white"},{"score":{"name":"$damage","objective":"atr.int"},"color":"red"}]