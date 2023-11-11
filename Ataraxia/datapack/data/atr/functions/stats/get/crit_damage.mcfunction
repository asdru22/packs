data modify storage atr:storage root.temp.attack.crit set value true
data modify storage atr:storage root.temp.attack.color set value "#FF6000"

scoreboard players set $crit_damage atr.int 50


execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.mainhand.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.offhand.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.helmet.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.chestplate.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.leggings.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

execute store result score #temp atr.int run data get storage atr:storage root.temp.equipment.boots.stats.crit_damage
scoreboard players operation $crit_damage atr.int += #temp atr.int

scoreboard players operation #temp atr.int = $damage atr.int
scoreboard players operation #temp atr.int *= $crit_damage atr.int
scoreboard players operation #temp atr.int /= #100 atr.int
scoreboard players operation $damage atr.int += #temp atr.int

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"[!] Crit Damage: ","color":"white"},{"score":{"name":"$damage","objective":"atr.int"},"color":"red"}]