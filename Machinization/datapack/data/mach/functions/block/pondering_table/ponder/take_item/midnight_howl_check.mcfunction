execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:midnight_star"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:cobbled_deepslate"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i3 mach.data = $count mach.data 

execute store result score $i4 mach.data run clear @s recovery_compass{smithed:{id:"mach:tin_ingot"}} 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 2.. if score $i4 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/midnight_howl_give

loot replace block ~ ~ ~ container.12 loot mach:item/midnight_howl
item modify block ~ ~ ~ container.12 mach:block/pondering_table/midnight_howl_lore
data modify block ~ ~ ~ Items[{Slot:12b}].id set value "minecraft:green_shulker_box"