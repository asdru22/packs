execute store result score rng nihility.data run loot spawn ~ ~ ~ loot nihility:technical/rng/1_5

execute if score rng nihility.data matches 1..2 run loot spawn ~ ~ ~ loot nihility:item/rescinded_ore
execute if score rng nihility.data matches 3..4 run loot spawn ~ ~ ~ loot nihility:item/voidnilla_seeds
execute if score rng nihility.data matches 5 run function nihility:entity/rupture_missionary/summon