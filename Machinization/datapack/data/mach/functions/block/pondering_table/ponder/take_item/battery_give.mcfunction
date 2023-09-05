clear @s recovery_compass{smithed:{id:"mach:iron_plate"}} 2
clear @s recovery_compass{smithed:{id:"mach:copper_wire"}} 2
clear @s recovery_compass{smithed:{id:"mach:rose_gold_ingot"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:glass"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/battery