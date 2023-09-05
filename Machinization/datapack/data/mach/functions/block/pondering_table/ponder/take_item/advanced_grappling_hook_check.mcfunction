execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:spring"}} 0

execute store result score $i2 mach.data run clear @s crossbow{smithed:{id:"mach:grappling_hook"}} 0

execute store result score $i3 mach.data run clear @s recovery_compass{smithed:{id:"mach:sterling_silver_ingot"}} 0

execute store result score $i4 mach.data run clear @s recovery_compass{smithed:{id:"mach:brass_plate"}} 0

execute if score $i1 mach.data matches 2.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 1.. if score $i4 mach.data matches 2.. run function mach:block/pondering_table/ponder/take_item/advanced_grappling_hook_give

loot replace block ~ ~ ~ container.14 loot mach:item/advanced_grappling_hook
item modify block ~ ~ ~ container.14 mach:block/pondering_table/advanced_grappling_hook_lore
data modify block ~ ~ ~ Items[{Slot:14b}].id set value "minecraft:green_shulker_box"
data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set value 880010