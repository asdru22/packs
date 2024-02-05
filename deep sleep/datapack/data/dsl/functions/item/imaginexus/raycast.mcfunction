execute if block ~ ~ ~ crafting_table run function dsl:item/imaginexus/hit

execute if entity @s[distance=..7] if score $found dsl.dummy matches 1 positioned ^ ^ ^0.05 run function dsl:item/imaginexus/raycast