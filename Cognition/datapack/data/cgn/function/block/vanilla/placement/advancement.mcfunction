# Scans for placed custom blocks

scoreboard players set @s cgn.dummy 0
execute store result score @s cgn.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s cgn.dummy 2
execute anchored eyes run function cgn:block/vanilla/placement/raycast
execute as @e[type=minecraft:item_display,tag=cgn.newly_placed_update_light] at @s run function cgn:block/vanilla/update_light/on_place
advancement revoke @s only cgn:technical/placed_block/custom