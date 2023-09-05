clear @s recovery_compass{smithed:{id:"mach:midnight_star"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:cobbled_deepslate"}]
scoreboard players set $count mach.data 2
function mach:block/pondering_table/clear/clear_init

clear @s recovery_compass{smithed:{id:"mach:tin_ingot"}} 1
loot give @s loot mach:item/midnight_howl