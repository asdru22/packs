execute if entity @s[tag=mach.grinder] if data block ~ ~ ~ Items[{Slot:13b}] run function mach:block/grinder/grind/main
execute if entity @s[tag=mach.compressor] run function mach:block/compressor/compress/main
execute if entity @s[tag=mach.smeltery] run function mach:block/smeltery/smelt/main
execute if entity @s[tag=mach.sifter] run function mach:block/sifter/sift/main
execute if entity @s[tag=mach.foundry] run function mach:block/foundry/smelt/main