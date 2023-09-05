tag @s add nihility.me

execute if data storage smithed.custom_block:main blockApi{id:"nihility:voidlinker"} run function nihility:block/voidlinker/place
execute if data storage smithed.custom_block:main blockApi{id:"nihility:battery"} run function nihility:block/battery/place
execute if data storage smithed.custom_block:main blockApi{id:"nihility:magnetic_forge"} run function nihility:block/magnetic_forge/place
execute if data storage smithed.custom_block:main blockApi{id:"nihility:oblivion_well"} run function nihility:block/oblivion_well/place
execute if data storage smithed.custom_block:main blockApi{id:"nihility:thinkery_table"} run function nihility:block/thinkery_table/place
execute if data storage smithed.custom_block:main blockApi{id:"nihility:awakening_table"} run function nihility:block/awakening_table/place

tag @s remove nihility.me