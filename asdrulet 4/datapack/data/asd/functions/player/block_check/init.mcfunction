scoreboard players set range asd.d 7
scoreboard players set found asd.d 0
scoreboard players operation t asd.d = @s asd.id
execute anchored eyes positioned ^ ^ ^ run function asd:player/block_check/cast
execute if entity @s[predicate=asd:player/sneaking] run function asd:player/block_check/find_villager