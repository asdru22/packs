execute store result score tot_enchs nihility.data if data storage nihility:storage root.temp.merge.final[]
scoreboard players operation tot_enchs nihility.data -= enchs nihility.data
execute if score tot_enchs nihility.data matches 1.. run function nihility:block/oblivion_well/generate/randomize_list/remove_last_ench