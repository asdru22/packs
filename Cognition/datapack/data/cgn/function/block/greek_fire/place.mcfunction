summon item_display ~ ~ ~ {item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"cgn:block/greek_fire"}},Tags:["cgn.block","cgn.tick","cgn.second","cgn.greek_fire","smithed.block"],brightness:{block:15,sky:15}}
execute if block ~ ~ ~ water run return run setblock ~ ~ ~ light[level=15,waterlogged=true]
execute if block ~ ~1 ~ water run return run setblock ~ ~ ~ light[level=15,waterlogged=true]

setblock ~ ~ ~ light[level=15]