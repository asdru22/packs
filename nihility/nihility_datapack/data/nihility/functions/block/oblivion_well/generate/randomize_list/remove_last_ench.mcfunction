data remove storage nihility:storage root.temp.merge.final[-1]
scoreboard players remove tot_enchs nihility.data 1
execute if score tot_enchs nihility.data matches 1.. run function nihility:block/oblivion_well/generate/randomize_list/remove_last_ench