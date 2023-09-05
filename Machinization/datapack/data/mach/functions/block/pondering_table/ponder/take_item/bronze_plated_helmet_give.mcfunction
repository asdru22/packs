clear @s recovery_compass{smithed:{id:"mach:bronze_plate"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:leather_helmet"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/bronze_plated_helmet