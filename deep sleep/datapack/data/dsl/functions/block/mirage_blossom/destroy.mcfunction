execute on passengers run kill @s

particle item recovery_compass{CustomModelData:882001} ~ ~ ~ 0.33 0.33 0.33 0.1 5

execute if entity @s[scores={dsl.dummy=0..6}] run loot spawn ~ ~ ~ loot dsl:items/mirage_blossom_seed
execute if entity @s[scores={dsl.dummy=7}] run loot spawn ~ ~ ~ loot dsl:items/mirage_blossom
execute if entity @s[scores={dsl.dummy=7}] if predicate dsl:chance/1_3 run loot spawn ~ ~ ~ loot dsl:items/mirage_blossom_seed
playsound minecraft:block.pink_petals.break block @a[distance=..16]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ air
kill @s