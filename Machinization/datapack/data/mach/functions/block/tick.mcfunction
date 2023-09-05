execute store success score @s mach.temp run data modify entity @s ArmorItems[3].tag.mach.gui set from block ~ ~ ~ Items
execute if entity @s[tag=mach.grinder] run function mach:block/grinder/tick
execute if entity @s[tag=mach.compressor] run function mach:block/compressor/tick
execute if entity @s[tag=mach.machine_assembler] run function mach:block/machine_assembler/tick
execute if entity @s[tag=mach.smeltery] run function mach:block/smeltery/tick
execute if entity @s[tag=mach.pondering_table] run function mach:block/pondering_table/tick
execute if entity @s[tag=mach.sifter] run function mach:block/sifter/tick
execute if entity @s[tag=mach.foundry] run function mach:block/foundry/tick
execute if entity @s[tag=mach.converger] run function mach:block/converger/tick
execute if entity @s[tag=mach.bounce_pad] run function mach:block/bounce_pad/tick