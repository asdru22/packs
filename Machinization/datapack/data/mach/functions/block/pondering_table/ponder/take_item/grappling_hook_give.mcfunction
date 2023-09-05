clear @s recovery_compass{smithed:{id:"mach:spring"}} 1

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:blackstone"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

clear @s recovery_compass{smithed:{id:"mach:iron_fiber"}} 5
loot give @s loot mach:item/grappling_hook