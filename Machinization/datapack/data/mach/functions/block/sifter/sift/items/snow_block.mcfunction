execute if block ~ ~-1 ~ #mach:container store result score $success mach.data run loot insert ~ ~-1 ~ loot mach:technical/sifter/snow
execute if predicate mach:block/container_check run loot spawn ~ ~-1 ~ loot mach:technical/sifter/snow
scoreboard players set $remove mach.data 1