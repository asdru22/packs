clear @s shulker_box{mach:{gui:1b}}
data remove storage mach:storage root.temp.item

execute unless data storage mach:storage root.temp.gui[{Slot:0b,tag:{smithed:{id:"mach:compressor"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/compressor
execute unless data storage mach:storage root.temp.gui[{Slot:1b,tag:{smithed:{id:"mach:grinder"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/grinder
execute unless data storage mach:storage root.temp.gui[{Slot:2b,tag:{smithed:{id:"mach:smeltery"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/smeltery
execute unless data storage mach:storage root.temp.gui[{Slot:3b,tag:{smithed:{id:"mach:pondering_table"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/pondering_table
execute unless data storage mach:storage root.temp.gui[{Slot:4b,tag:{smithed:{id:"mach:sifter"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/sifter
execute unless data storage mach:storage root.temp.gui[{Slot:5b,tag:{smithed:{id:"mach:foundry"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/foundry
execute unless data storage mach:storage root.temp.gui[{Slot:6b,tag:{smithed:{id:"mach:converger"},mach:{gui:1b}}}] run function mach:block/machine_assembler/assemble/take_item/converger


function mach:block/machine_assembler/assemble/extra_items