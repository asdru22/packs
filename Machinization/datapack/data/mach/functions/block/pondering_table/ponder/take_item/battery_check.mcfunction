execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:iron_plate"}} 0

execute store result score $i2 mach.data run clear @s recovery_compass{smithed:{id:"mach:copper_wire"}} 0

execute store result score $i3 mach.data run clear @s recovery_compass{smithed:{id:"mach:rose_gold_ingot"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:glass"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i4 mach.data = $count mach.data 

execute if score $i1 mach.data matches 2.. if score $i2 mach.data matches 2.. if score $i3 mach.data matches 1.. if score $i4 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/battery_give

loot replace block ~ ~ ~ container.10 loot mach:item/battery
item modify block ~ ~ ~ container.10 mach:block/pondering_table/battery_lore
data modify block ~ ~ ~ Items[{Slot:10b}].id set value "minecraft:green_shulker_box"