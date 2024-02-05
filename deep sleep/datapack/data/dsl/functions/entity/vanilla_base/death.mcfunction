particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}

execute if score #custom_mob_cap dsl.dummy matches 1.. run scoreboard players remove #custom_mob_cap dsl.dummy 1

$loot spawn ~ ~ ~ loot dsl:entities/$(id)

$playsound dsl:entity.$(id).death hostile @a[distance=..16]

tp @s 0 ~-1000 0
kill @s