execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:spring"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:crossbow"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:iron_ingot"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i3 mach.data = $count mach.data 

execute if score $i1 mach.data matches 2.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/spring_loaded_crossbow_give

loot replace block ~ ~ ~ container.4 loot mach:item/spring_loaded_crossbow
item modify block ~ ~ ~ container.4 mach:block/pondering_table/spring_loaded_crossbow_lore
data modify block ~ ~ ~ Items[{Slot:4b}].id set value "minecraft:green_shulker_box"