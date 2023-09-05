execute store result score $i1 mach.data run clear @s campfire 0
execute store result score $i2 mach.data run clear @s chain 0
execute store result score $i3 mach.data run clear @s smoker 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 2.. if score $i3 mach.data matches 1.. run function mach:block/machine_assembler/assemble/take_item/smeltery_give

execute if data storage mach:storage root.temp.gui[{Slot:2b}] run data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.gui[{Slot:2b}]