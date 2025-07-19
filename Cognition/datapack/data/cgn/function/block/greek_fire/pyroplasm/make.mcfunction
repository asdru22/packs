execute summon armor_stand run function cgn:block/greek_fire/pyroplasm/armor_stand

loot spawn ~ ~ ~ loot cgn:items/pyroplasm

function cgn:block/greek_fire/extinguish

$execute as @p[nbt={UUID:$(owner)}] run advancement grant @s only cgn:gameplay/make_pyroplasm