execute if block ~ ~-1 ~ #mach:container store result score $success mach.data run loot insert ~ ~-1 ~ loot mach:technical/change_count/cast_iron_bar
execute if predicate mach:block/container_check run loot spawn ~ ~-1 ~ loot mach:technical/change_count/cast_iron_bar
scoreboard players set $remove mach.data 3