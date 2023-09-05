execute if block ~ ~-1 ~ hopper[facing=down] run data modify block ~ ~-1 ~ TransferCooldown set value 2147483646
execute if data block ~ ~ ~ Items[] run function mach:block/main