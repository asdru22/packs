data modify storage gh:storage root.temp.item set from entity @s SelectedItem
data modify storage gh:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]

execute anchored eyes positioned ^ ^ ^ if entity @s[tag=!gh.using_grapple] run function gh:item/grappling_hook/as_player/init