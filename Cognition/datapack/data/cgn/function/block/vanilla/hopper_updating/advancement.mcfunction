# Commands to run when a player places a hopper

scoreboard players reset #temp_0 cgn.dummy
execute store result score #temp_0 cgn.dummy run attribute @s minecraft:block_interaction_range get 1.0
scoreboard players add #temp_0 cgn.dummy 2
data remove storage cgn:macro root
execute store result storage cgn:macro root.distance int 1 run scoreboard players get #temp_0 cgn.dummy
function cgn:block/vanilla/hopper_updating/distance_macro with storage cgn:macro root
advancement revoke @s only cgn:technical/placed_block/hopper
