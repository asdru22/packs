data modify storage nihility:storage root.temp.item set from entity @s Item
execute positioned ~ ~-1 ~ run function nihility:item/modifying/awakening/main
data modify entity @s Item set from block ~ ~-1 ~ Items[0]