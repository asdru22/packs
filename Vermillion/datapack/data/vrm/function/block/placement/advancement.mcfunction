# Scans for placed custom blocks

scoreboard players set @s vrm.dummy 0
execute store result score @s vrm.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s vrm.dummy 2
execute anchored eyes run function vrm:block/placement/raycast
execute as @e[type=minecraft:item_display,tag=vrm.newly_placed_update_light] at @s run function vrm:block/update_light/on_place
advancement revoke @s only vrm:technical/placed_block/custom_block