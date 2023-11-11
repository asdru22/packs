execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.magic_damage
scoreboard players operation $damage atr.int += #temp atr.int

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Raw Magic Damage: ","color":"white"},{"score":{"name":"$damage","objective":"atr.int"},"color":"red"}]