execute if score temp nihility.data matches -1 run loot replace entity @s weapon.mainhand loot nihility:item/rupture_entry_0
execute if score temp nihility.data matches -2 run loot replace entity @s weapon.mainhand loot nihility:item/rupture_entry_1

data remove storage nihility:storage root.temp.item
data modify storage nihility:storage root.temp.item set from entity @s SelectedItem

function nihility:item/omnihility/first_page

loot replace entity @s weapon.mainhand loot nihility:item/the_omnihility
item modify entity @s weapon.mainhand nihility:copy_pages