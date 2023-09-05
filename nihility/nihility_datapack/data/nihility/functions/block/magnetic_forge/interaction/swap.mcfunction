scoreboard players set run nihility.data 1
execute positioned ~ ~-0.5 ~ run function nihility:block/magnetic_forge/interaction/give_item_back
data modify entity @s Item set from storage nihility:storage root.temp.item