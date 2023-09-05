execute if entity @s[tag=nihility.entity.void_zombie] run loot spawn ~ ~ ~ loot nihility:entity/void_zombie
summon experience_orb ~ ~ ~ {Value:4}
data merge entity @s {Health:0}