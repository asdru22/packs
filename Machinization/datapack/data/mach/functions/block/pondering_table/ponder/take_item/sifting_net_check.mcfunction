execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:iron_fiber"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 

execute if score $i1 mach.data matches 3.. if score $i2 mach.data matches 4.. run function mach:block/pondering_table/ponder/take_item/sifting_net_give

loot replace block ~ ~ ~ container.2 loot mach:item/sifting_net
item modify block ~ ~ ~ container.2 mach:block/pondering_table/sifting_net_lore
data modify block ~ ~ ~ Items[{Slot:2b}].id set value "minecraft:yellow_shulker_box"