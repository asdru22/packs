particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}

$loot spawn ~ ~ ~ loot dsl:entities/$(id)

$playsound dsl:entity.$(id).death hostile @a[distance=..16]

kill @s