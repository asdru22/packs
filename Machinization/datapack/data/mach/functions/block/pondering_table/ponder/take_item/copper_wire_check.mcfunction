execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:copper_plate"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:red_terracotta"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/copper_wire_give

loot replace block ~ ~ ~ container.0 loot mach:item/copper_wire
item modify block ~ ~ ~ container.0 mach:block/pondering_table/copper_wire_lore
data modify block ~ ~ ~ Items[{Slot:0b}].id set value "minecraft:yellow_shulker_box"