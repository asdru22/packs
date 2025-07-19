# Kills item for positional anchor

execute store result score #count vrm.dummy run data get entity @s Item.count
loot replace entity @s contents loot vrm:blocks/moonlit_monolith