data modify storage nihility:storage root.temp.merge.final insert 0 from entity @s data.nihility
kill @s
execute as @e[type=marker,limit=1,sort=random,tag=nihility.setup,tag=nihility.random] run function nihility:block/oblivion_well/generate/randomize_list/add_random