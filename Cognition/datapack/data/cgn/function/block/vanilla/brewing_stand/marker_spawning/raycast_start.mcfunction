# Starts a raycast

scoreboard players set @s cgn.dummy 0
execute store result score @s cgn.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function cgn:block/vanilla/brewing_stand/marker_spawning/raycast
advancement revoke @s only cgn:technical/default_block_use/open_brewing_stand
