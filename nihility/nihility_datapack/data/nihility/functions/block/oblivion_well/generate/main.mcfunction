scoreboard players reset level nihility.data
execute if block ~-2 ~ ~-2 minecraft:bookshelf run scoreboard players add level nihility.data 1
execute if block ~-2 ~1 ~-2 minecraft:bookshelf run scoreboard players add level nihility.data 1

execute if block ~2 ~ ~-2 minecraft:bookshelf run scoreboard players add level nihility.data 1
execute if block ~2 ~1 ~-2 minecraft:bookshelf run scoreboard players add level nihility.data 1

execute if block ~-2 ~ ~2 minecraft:bookshelf run scoreboard players add level nihility.data 1
execute if block ~-2 ~1 ~2 minecraft:bookshelf run scoreboard players add level nihility.data 1

execute if block ~2 ~ ~2 minecraft:bookshelf run scoreboard players add level nihility.data 1
execute if block ~2 ~1 ~2 minecraft:bookshelf run scoreboard players add level nihility.data 1

data modify storage nihility:storage root.temp.merge.final set value []
execute if score level nihility.data matches 1 run function nihility:block/oblivion_well/generate/levels/1

execute if score lapis nihility.data >= req_lapis nihility.data run function nihility:block/oblivion_well/generate/book