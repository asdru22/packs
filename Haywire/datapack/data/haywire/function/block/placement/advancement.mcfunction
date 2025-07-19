# Scans for placed custom blocks

scoreboard players set @s haywire.dummy 0
execute store result score @s haywire.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s haywire.dummy 2
execute anchored eyes run function haywire:block/placement/raycast
execute as @e[type=minecraft:item_display,tag=haywire.newly_placed_update_light] at @s run function haywire:block/update_light/on_place
advancement revoke @s only haywire:technical/placed_block/custom_block