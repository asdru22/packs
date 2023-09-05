scoreboard players set found asd.d 1

execute if score recipe asd.d matches 0 if score occupied asd.d matches 2 if data storage asd:data root.temp{container:[{tag:{asd:{id:"copper_chunk"}}},{tag:{asd:{id:"tin"}}}]} run function asd:multiblock/furnace/recipes/bronze_ingot

execute if score recipe asd.d matches 1 run function asd:multiblock/furnace/found_recipe