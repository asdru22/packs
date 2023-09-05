clear @s recovery_compass{smithed:{id:"mach:sterling_silver_ingot"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

clear @s recovery_compass{smithed:{id:"mach:copper_wire"}} 1
clear @s recovery_compass{smithed:{id:"mach:cast_iron_bar"}} 2
loot give @s loot mach:item/thunderbuss