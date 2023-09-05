scoreboard players set found asd.d 0
scoreboard players set recipe asd.d 0
function asd:entity/marker_villager/storage

execute if score found asd.d matches 0 if block ~ ~ ~ oak_fence if block ~ ~1 ~ crafting_table if block ~ ~-1 ~ dropper[facing=up] run function asd:multiblock/crafter/main

execute if score found asd.d matches 0 if block ~ ~ ~ nether_brick_fence if block ~ ~1 ~ lava if block ~ ~-1 ~ dropper[facing=up] run function asd:multiblock/furnace/main

execute if score found asd.d matches 0 if block ~ ~ ~ iron_bars if block ~ ~1 ~ iron_trapdoor[half=bottom] if block ~ ~-1 ~ dropper[facing=up] if block ~ ~-1 ~1 piston[facing=north] if block ~ ~-1 ~-1 piston[facing=south] run function asd:multiblock/pulverizer/main

execute if score found asd.d matches 0 if block ~ ~ ~ iron_bars if block ~ ~1 ~ iron_trapdoor[half=bottom] if block ~ ~-1 ~ dropper[facing=up] if block ~1 ~-1 ~ piston[facing=west] if block ~-1 ~-1 ~ piston[facing=east] run function asd:multiblock/pulverizer/main

execute if score found asd.d matches 0 if block ~ ~ ~ lightning_rod[facing=up] if block ~ ~-1 ~ dropper[facing=up] if block ~ ~-1 ~1 hopper[facing=north] if block ~ ~-1 ~-1 hopper[facing=south] if block ~ ~ ~1 lava_cauldron if block ~ ~ ~-1 lava_cauldron run function asd:multiblock/forge/main

execute if score found asd.d matches 0 if block ~ ~ ~ lightning_rod[facing=up] if block ~ ~-1 ~ dropper[facing=up] if block ~-1 ~-1 ~ hopper[facing=east] if block ~1 ~-1 ~ hopper[facing=west] if block ~-1 ~ ~ lava_cauldron if block ~1 ~ ~ lava_cauldron run function asd:multiblock/forge/main