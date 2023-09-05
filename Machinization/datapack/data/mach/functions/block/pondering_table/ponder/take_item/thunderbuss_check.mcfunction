execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:sterling_silver_ingot"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute store result score $i3 mach.data run clear @s recovery_compass{smithed:{id:"mach:copper_wire"}} 0

execute store result score $i4 mach.data run clear @s recovery_compass{smithed:{id:"mach:cast_iron_bar"}} 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 1.. if score $i4 mach.data matches 2.. run function mach:block/pondering_table/ponder/take_item/thunderbuss_give

loot replace block ~ ~ ~ container.11 loot mach:item/thunderbuss
item modify block ~ ~ ~ container.11 mach:block/pondering_table/thunderbuss_lore
data modify block ~ ~ ~ Items[{Slot:11b}].id set value "minecraft:green_shulker_box"