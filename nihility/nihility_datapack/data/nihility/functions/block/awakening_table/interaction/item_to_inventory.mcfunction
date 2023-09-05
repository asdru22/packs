scoreboard players set temp2 nihility.data 0
execute if data entity @s SelectedItem at @s run function nihility:block/awakening_table/interaction/spawn_item
execute if score temp2 nihility.data matches 0 unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0