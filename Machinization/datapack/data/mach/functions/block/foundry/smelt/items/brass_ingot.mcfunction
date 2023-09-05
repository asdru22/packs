execute if block ~ ~-1 ~ #mach:container store result score $success mach.data run loot insert ~ ~-1 ~ loot mach:item/brass_ingot
execute if predicate mach:block/container_check run loot spawn ~ ~-1 ~ loot mach:item/brass_ingot
scoreboard players set $remove mach.data 2