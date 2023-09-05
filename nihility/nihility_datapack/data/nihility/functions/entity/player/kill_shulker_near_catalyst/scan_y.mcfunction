scoreboard players set success nihility.data 0
execute if score success nihility.data matches 0 positioned ~ ~2 ~ run function nihility:entity/player/kill_shulker_near_catalyst/scan_xz
execute if score success nihility.data matches 0 positioned ~ ~1 ~ run function nihility:entity/player/kill_shulker_near_catalyst/scan_xz
execute if score success nihility.data matches 0 positioned ~ ~ ~ run function nihility:entity/player/kill_shulker_near_catalyst/scan_xz
execute if score success nihility.data matches 0 positioned ~ ~-1 ~ run function nihility:entity/player/kill_shulker_near_catalyst/scan_xz
execute if score success nihility.data matches 0 positioned ~ ~-2 ~ run function nihility:entity/player/kill_shulker_near_catalyst/scan_xz