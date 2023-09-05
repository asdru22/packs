execute as @e[type=item,nbt={Item:{id:"minecraft:barrel"},PickupDelay:10s}] at @s run function mach:block/pondering_table/drop_block
kill @s
kill @e[type=item,nbt={Item:{tag:{mach:{gui:1b}}}}]