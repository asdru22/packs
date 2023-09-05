## nihility:storage root.temp.merge.final
function nihility:block/oblivion_well/generate/randomize_list/summon

execute as @e[type=marker,limit=1,sort=random,tag=nihility.setup,tag=nihility.random] run function nihility:block/oblivion_well/generate/randomize_list/add_random

#function nihility:block/oblivion_well/generate/randomize_list/remove_same/main

function nihility:block/oblivion_well/generate/randomize_list/get_amount_of_ench