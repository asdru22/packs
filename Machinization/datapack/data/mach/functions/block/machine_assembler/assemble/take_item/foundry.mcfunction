execute store result score $i1 mach.data run clear @s blast_furnace 0
execute store result score $i2 mach.data run clear @s recovery_compass{smithed:{id:"mach:iron_plate"}} 0
execute store result score $i3 mach.data run clear @s cobbled_deepslate 0
execute store result score $i4 mach.data run clear @s brewing_stand 0
execute store result score $i5 mach.data run clear @s lava_bucket 0


execute if score $i1 mach.data matches 1.. if score $i2 mach.data matches 1.. if score $i3 mach.data matches 2.. if score $i4 mach.data matches 1.. if score $i5 mach.data matches 1.. run function mach:block/machine_assembler/assemble/take_item/foundry_give

execute if data storage mach:storage root.temp.gui[{Slot:5b}] run data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.gui[{Slot:5b}]