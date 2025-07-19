execute on passengers run kill @s

loot spawn ~ ~ ~ loot cgn:items/wispthorn

particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"cgn:block/wispthorn"}}} ~ ~ ~ 0.2 0.7 0.2 0.05 25 normal

playsound minecraft:block.pink_petals.break block @a[distance=..16]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ air
kill @s