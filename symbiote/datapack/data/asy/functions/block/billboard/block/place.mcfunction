summon armor_stand ~ ~-0.5 ~ {Marker:1b,Invisible:1b,Tags:["asy.20_ticks","asy.entity","asy.block","asy.block.billboard","asy.setup"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6901000}}]}
setblock ~ ~ ~ furnace{Lock:"\\uf001asy.billboard",CustomName:'{"translate":"block.asy.billboard"}'}

execute as @e[type=armor_stand,tag=asy.block.billboard,tag=asy.setup] run function asy:block/billboard/block/setup