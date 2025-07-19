# Commands to run when a player places a hopper

scoreboard players reset #temp_0 haywire.dummy
execute store result score #temp_0 haywire.dummy run attribute @s minecraft:block_interaction_range get 1.0
scoreboard players add #temp_0 haywire.dummy 2
data remove storage haywire:temp root.macro_input
execute store result storage haywire:temp root.macro_input.distance int 1 run scoreboard players get #temp_0 haywire.dummy
function haywire:block/hopper_updating/distance_macro with storage haywire:temp root.macro_input
advancement revoke @s only haywire:technical/placed_block/hopper
