execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:cast_iron_plate"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:iron_nugget"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 2.. run function mach:block/pondering_table/ponder/take_item/spring_give

loot replace block ~ ~ ~ container.3 loot mach:item/spring
item modify block ~ ~ ~ container.3 mach:block/pondering_table/spring_lore
data modify block ~ ~ ~ Items[{Slot:3b}].id set value "minecraft:yellow_shulker_box"