particle smoke ~ ~.33 ~ 0 0 0 0.01 5
execute store result score $temp cgn.dummy run data get entity @s Item.count
kill @s
loot spawn ~ ~0.33 ~ loot cgn:technical/count/ebonite_ingot

$advancement grant @p[nbt={UUID:$(UUID)}] only cgn:gameplay/make_ebonite