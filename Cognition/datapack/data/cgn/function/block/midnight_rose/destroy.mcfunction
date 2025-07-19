execute on passengers run kill @s

particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"cgn:block/midnight_rose"}}} ~ ~ ~ 0.2 0.7 0.2 0.05 25 normal

execute if entity @s[scores={cgn.dummy=0..6}] run loot spawn ~ ~ ~ loot cgn:items/midnight_rose_seed
execute if entity @s[scores={cgn.dummy=7}] run loot spawn ~ ~ ~ loot cgn:items/midnight_rose
execute if entity @s[scores={cgn.dummy=7}] if predicate cgn:random_chance/1_3 run loot spawn ~ ~ ~ loot cgn:items/midnight_rose_seed
playsound minecraft:block.pink_petals.break block @a[distance=..16]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ air

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:melon_seeds"},Age:0s}]
kill @s