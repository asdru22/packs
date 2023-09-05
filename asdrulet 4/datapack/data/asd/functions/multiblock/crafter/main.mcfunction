scoreboard players set found asd.d 1

execute if score recipe asd.d matches 0 if score occupied asd.d matches 1 if data storage asd:data root.temp.container[{id:"minecraft:copper_block"}] run function asd:multiblock/crafter/recipes/copper_chunk

execute if score recipe asd.d matches 0 if data storage asd:data root.temp.container_shaped{1:[{id:"minecraft:wheat"},{id:"minecraft:air"},{id:"minecraft:wheat"}],2:[{id:"minecraft:string"},{id:"minecraft:leather"},{id:"minecraft:string"}],3:[{id:"minecraft:leather"},{id:"minecraft:wheat"},{id:"minecraft:leather"}]} run function asd:multiblock/crafter/recipes/sturdy_hide

execute if score recipe asd.d matches 1 run function asd:multiblock/crafter/found_recipe