execute unless block ~ ~ ~ barrel{CustomName:'{"color":"white","font":"mach:gui","translate":"block.mach.gui_foundry","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.mach.converger"}]}'} run function mach:block/converger/destroy
execute if score @s mach.temp matches 1 as @p[distance=..6] run function mach:block/converger/update

execute if block ~ ~1 ~ lightning_rod[facing=up,powered=true] run function mach:block/converger/converge/lightning/main