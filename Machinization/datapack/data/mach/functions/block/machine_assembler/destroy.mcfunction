execute as @e[type=item,nbt={Item:{id:"minecraft:barrel"},PickupDelay:10s}] at @s run function mach:block/machine_assembler/drop_block
kill @s
kill @e[type=item,nbt={Item:{tag:{mach:{gui:1b}}}}]