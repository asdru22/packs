execute store result score $i1 mach.data run clear @s hopper 0
execute store result score $i2 mach.data run clear @s recovery_compass{smithed:{id:"mach:sifting_net"}} 0

execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. run function mach:block/machine_assembler/assemble/take_item/sifter_give

execute if data storage mach:storage root.temp.gui[{Slot:4b}] run data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.gui[{Slot:4b}]