clear @s recovery_compass{smithed:{id:"mach:copper_plate"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:red_terracotta"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/copper_wire