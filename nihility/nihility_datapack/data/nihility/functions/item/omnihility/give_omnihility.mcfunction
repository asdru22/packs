loot replace entity @s weapon.mainhand loot nihility:item/the_omnihility
data modify storage nihility:storage root.temp.item set from entity @s SelectedItem
function nihility:item/omnihility/first_page
item modify entity @s weapon.mainhand nihility:copy_pages