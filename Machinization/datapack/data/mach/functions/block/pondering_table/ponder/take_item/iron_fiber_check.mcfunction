execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:iron_plate"}} 0

execute if score $i1 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/iron_fiber_give

loot replace block ~ ~ ~ container.1 loot mach:item/iron_fiber
item modify block ~ ~ ~ container.1 mach:block/pondering_table/iron_fiber_lore
data modify block ~ ~ ~ Items[{Slot:1b}].id set value "minecraft:yellow_shulker_box"