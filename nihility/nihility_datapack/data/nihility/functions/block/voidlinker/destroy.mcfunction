execute as @e[type=item,predicate=nihility:entity/item/voidlinker,distance=..6,tag=!nihility.offered_item] at @s run function nihility:block/voidlinker/spawn_loot

execute positioned ~ ~1 ~ as @e[type=end_crystal,sort=nearest,limit=1,tag=nihility.voidlinker_crystal] run function nihility:block/voidlinker/crystal_unlink
kill @s