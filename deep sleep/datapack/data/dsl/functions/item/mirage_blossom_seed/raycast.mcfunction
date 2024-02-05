execute if block ~ ~ ~ farmland positioned ~ ~1 ~ if block ~ ~ ~ #dsl:air run function dsl:item/mirage_blossom_seed/place

execute unless score $found dsl.dummy matches 1 if entity @s[distance=..7] positioned ^ ^ ^0.1 run function dsl:item/mirage_blossom_seed/raycast