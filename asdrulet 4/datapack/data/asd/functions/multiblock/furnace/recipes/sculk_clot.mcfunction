execute if block ~ ~-2 ~ #asd:container run loot insert ~ ~-2 ~ loot asd:items/materials/sculk_clot
execute if block ~ ~-2 ~ #asd:container run loot insert ~ ~-2 ~ loot asd:items/materials/glass_bottle

execute unless block ~ ~-2 ~ #asd:container run loot spawn ~ ~-2 ~ loot asd:items/materials/sculk_clot
execute unless block ~ ~-2 ~ #asd:container run loot spawn ~ ~-2 ~ loot asd:items/materials/glass_bottle

scoreboard players set recipe asd.d 1