clear @s recovery_compass{smithed:{id:"mach:spring"}} 2

data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:crossbow"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:iron_ingot"}]
scoreboard players set $count mach.data 1
function mach:block/pondering_table/clear/clear_init

loot give @s loot mach:item/spring_loaded_crossbow