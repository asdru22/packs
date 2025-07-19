particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"cgn:weapon/malachite_knife"}}} ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal

$execute if entity @p[nbt={UUID:$(owner)},gamemode=!creative] if predicate cgn:random_chance/1_2 run loot spawn ~ ~ ~ loot cgn:items/malachite_knife
kill @s