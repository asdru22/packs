particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"cgn:weapon/malachite_knife"}}} ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal

$execute if entity @p[nbt={UUID:$(owner)},gamemode=!creative] if predicate cgn:random_chance/1_2 run loot spawn ~ ~ ~ loot cgn:items/malachite_knife

$execute if entity @s[tag=cgn.malachite_knife.mindflare] as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,distance=..2,limit=4] run damage @s 3 player_attack by @p[nbt={UUID:$(owner)}] 

kill @s
