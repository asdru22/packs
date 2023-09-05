clear @s recovery_compass{smithed:{id:"mach:iron_fiber"}} 3

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
scoreboard players set $count mach.data 4
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/sifting_net