clear @s recovery_compass{smithed:{id:"mach:cast_iron_plate"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:iron_nugget"}]
scoreboard players set $count mach.data 2
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/spring