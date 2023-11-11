execute on passengers run kill @s

particle item item_frame{CustomModelData:880003} ~ ~ ~ 0.33 0.33 0.33 0.1 5

execute if entity @s[scores={cgn.dummy=0..6}] run loot spawn ~ ~ ~ loot cgn:items/midnight_rose_seed
execute if entity @s[scores={cgn.dummy=7}] run loot spawn ~ ~ ~ loot cgn:items/midnight_rose
execute if entity @s[scores={cgn.dummy=7}] if predicate srn:chance/1_3 run loot spawn ~ ~ ~ loot cgn:items/midnight_rose_seed
playsound minecraft:block.pink_petals.break block @a[distance=..16]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ air
kill @s