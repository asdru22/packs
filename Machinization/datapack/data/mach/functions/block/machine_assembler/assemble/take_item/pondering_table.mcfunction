execute store result score $i1 mach.data run clear @s smithing_table 0
execute store result score $i2 mach.data run clear @s red_carpet 0
execute store result score $i3 mach.data run clear @s bookshelf 0
execute store result score $i4 mach.data run clear @s lantern 0


execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 1.. if score $i3 mach.data matches 1.. run function mach:block/machine_assembler/assemble/take_item/pondering_table_give

execute if data storage mach:storage root.temp.gui[{Slot:3b}] run data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.gui[{Slot:3b}]