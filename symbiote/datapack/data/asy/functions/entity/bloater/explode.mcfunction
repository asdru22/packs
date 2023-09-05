playsound minecraft:entity.generic.explode hostile @a[distance=..10]
particle minecraft:block redstone_block ~ ~1.5 ~ 0.7 0.7 0.7 0.05 14 normal
particle explosion
function asy:entity/player/symbiote_leech/remove_symbiote

scoreboard players add @s smithed.damage 4
scoreboard players set .explode asy.data 1
loot spawn ~ ~ ~ loot asy:item/iron_rich_blood