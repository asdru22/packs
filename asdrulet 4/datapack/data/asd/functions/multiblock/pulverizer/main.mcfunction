scoreboard players set found asd.d 1

execute if score recipe asd.d matches 0 if score occupied asd.d matches 1 if data storage asd:data root.temp{container:[{id:"minecraft:amethyst_shard"}]} run function asd:multiblock/pulverizer/recipes/amethyst_dust
execute if score recipe asd.d matches 0 if score occupied asd.d matches 1 if data storage asd:data root.temp{container:[{id:"minecraft:echo_shard"}]} run function asd:multiblock/pulverizer/recipes/echoing_powder

execute if score recipe asd.d matches 1 run function asd:multiblock/pulverizer/found_recipe