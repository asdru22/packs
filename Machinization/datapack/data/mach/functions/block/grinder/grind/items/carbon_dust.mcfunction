execute if block ~ ~-1 ~ #mach:container store result score $success mach.data run loot insert ~ ~-1 ~ loot mach:technical/change_count/carbon_dust
execute if predicate mach:block/container_check run loot spawn ~ ~-1 ~ loot mach:technical/change_count/carbon_dust
scoreboard players set $remove mach.data 1