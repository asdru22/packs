execute store result score $i1 mach.data run clear @s hopper 0
execute store result score $i2 mach.data run clear @s diorite_wall 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 4.. run function mach:block/machine_assembler/assemble/take_item/grinder_give

execute if data storage mach:storage root.temp.gui[{Slot:1b}] run data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.gui[{Slot:1b}]