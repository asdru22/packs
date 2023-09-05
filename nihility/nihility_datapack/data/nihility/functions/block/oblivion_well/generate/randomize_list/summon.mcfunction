summon marker ~ ~ ~ {Tags:["nihility.random"]}

execute as @e[type=marker,tag=nihility.random,limit=1,tag=!nihility.setup] run function nihility:block/oblivion_well/generate/randomize_list/setup_marker

execute if data storage nihility:storage root.temp.merge.final[] run function nihility:block/oblivion_well/generate/randomize_list/summon