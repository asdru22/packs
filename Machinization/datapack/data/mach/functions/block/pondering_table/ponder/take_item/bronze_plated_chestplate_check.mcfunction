execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:bronze_plate"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:leather_chestplate"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute if score $i1 mach.data matches 2.. if score $i2 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/bronze_plated_chestplate_give

loot replace block ~ ~ ~ container.7 loot mach:item/bronze_plated_chestplate
item modify block ~ ~ ~ container.7 mach:block/pondering_table/bronze_plated_chestplate_lore
data modify block ~ ~ ~ Items[{Slot:7b}].id set value "minecraft:green_shulker_box"