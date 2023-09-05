execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:bronze_plate"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:leather_helmet"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/bronze_plated_helmet_give

loot replace block ~ ~ ~ container.6 loot mach:item/bronze_plated_helmet
item modify block ~ ~ ~ container.6 mach:block/pondering_table/bronze_plated_helmet_lore
data modify block ~ ~ ~ Items[{Slot:6b}].id set value "minecraft:green_shulker_box"