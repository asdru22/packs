execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:spring"}} 0


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:stick"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i2 mach.data = $count mach.data 


data modify storage mach:storage root.temp.clear.in set value []
data modify storage mach:storage root.temp.clear.in append from entity @s Inventory[{id:"minecraft:blackstone"}]
function mach:block/pondering_table/clear/get_count_init
scoreboard players operation $i3 mach.data = $count mach.data 

execute store result score $i4 mach.data run clear @s recovery_compass{smithed:{id:"mach:iron_fiber"}} 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 1.. if score $i4 mach.data matches 5.. run function mach:block/pondering_table/ponder/take_item/grappling_hook_give

loot replace block ~ ~ ~ container.5 loot mach:item/grappling_hook
item modify block ~ ~ ~ container.5 mach:block/pondering_table/grappling_hook_lore
data modify block ~ ~ ~ Items[{Slot:5b}].id set value "minecraft:green_shulker_box"