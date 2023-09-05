execute as @a[distance=..15] run scoreboard players add @s nihility.void_score 1200
scoreboard players add global nihility.void_score 1200
function nihility:block/voidlinker/void_score/main
loot spawn ~ ~ ~ loot nihility:item/rescinded_blade