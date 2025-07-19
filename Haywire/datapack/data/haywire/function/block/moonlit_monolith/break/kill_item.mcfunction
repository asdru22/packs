# Kills item for positional anchor

execute store result score #count haywire.dummy run data get entity @s Item.count
loot replace entity @s contents loot haywire:blocks/moonlit_monolith