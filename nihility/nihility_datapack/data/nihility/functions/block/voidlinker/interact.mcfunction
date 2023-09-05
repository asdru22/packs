title @s actionbar ""
stopsound @a * minecraft:block.chest.locked

scoreboard players set temp nihility.data 0

data modify storage nihility:storage root.temp.data set from entity @s SelectedItem
data modify storage nihility:storage root.temp.data.Count set value 1b

execute if score temp nihility.data matches 0 if data entity @s SelectedItem as @e[type=minecraft:end_crystal,tag=nihility.voidlinker_crystal,tag=nihility.crystal.linked,sort=nearest,limit=1] at @s positioned ~ ~.7 ~ run function nihility:block/voidlinker/place/main

execute if predicate nihility:entity/player/sneaking as @e[type=item,tag=nihility.offered_item,sort=nearest,limit=1] at @s run function nihility:block/voidlinker/place/init_offer

execute unless predicate nihility:entity/player/sneaking if score temp nihility.data matches 0 unless data entity @s SelectedItem as @e[type=minecraft:end_crystal,tag=nihility.crystal.linked,tag=nihility.voidlinker_crystal,sort=nearest,limit=1] at @s positioned ~ ~.7 ~ as @e[type=item,tag=nihility.offered_item,tag=nihility.setup,limit=1,sort=nearest] at @s run function nihility:block/voidlinker/place/give_back

advancement revoke @s only nihility:technical/block/interact/voidlinker