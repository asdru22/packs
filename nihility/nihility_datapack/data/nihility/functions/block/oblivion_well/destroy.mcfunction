loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe
execute as @e[type=item,predicate=nihility:entity/item/oblivion_well,distance=..4] run function nihility:block/oblivion_well/spawn_loot
execute if data entity @s ArmorItems[3].tag.nihility.lapis run function nihility:block/oblivion_well/destroy/lapis
execute if data entity @s ArmorItems[3].tag.nihility{book:1b} run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b}}
kill @s