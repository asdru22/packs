execute store result score $i1 mach.data run clear @s recovery_compass{smithed:{id:"mach:spring"}} 0

execute store result score $i2 mach.data run clear @s slime_block 0
execute if score $i1 mach.data matches 2.. if score $i2 mach.data matches 1.. run function mach:block/pondering_table/ponder/take_item/bounce_pad_give

loot replace block ~ ~ ~ container.13 loot mach:block/bounce_pad
item modify block ~ ~ ~ container.13 mach:block/pondering_table/bounce_pad_lore
data modify block ~ ~ ~ Items[{Slot:13b}].id set value "minecraft:green_shulker_box"
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 880009