data modify storage mach:storage root.temp.gui set from block ~ ~ ~ Items
execute as @p at @s run function mach:block/machine_assembler/assemble/as_player
function mach:block/machine_assembler/assemble/reset