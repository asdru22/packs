scoreboard players set found asd.d 1

execute if score recipe asd.d matches 0 if score occupied asd.d matches 3 if data storage asd:data root.temp{container:[{id:"minecraft:honey_bottle"},{tag:{asd:{id:"amethyst_dust"}}},{tag:{asd:{id:"echoing_powder"}}}]} run function asd:multiblock/furnace/recipes/sculk_clot

execute if score recipe asd.d matches 1 run function asd:multiblock/forge/found_recipe