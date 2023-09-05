summon armor_stand ~ ~-0.5 ~ {Marker:1b,Invisible:1b,Tags:["nihility.entity","nihility.block","nihility.block.voidlinker"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6906000}}]}
setblock ~ ~ ~ furnace{Lock:"\\uf001nihility.voidlinker",CustomName:'{"translate":"block.nihility.voidlinker"}'}
summon end_crystal ~ ~.75 ~ {Invulnerable:1b,ShowBottom:0b,Tags:["nihility.entity","nihility.voidlinker_crystal"]}

function nihility:block/voidlinker/check_connections