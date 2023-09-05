data modify storage nihility:storage root.temp.item set from entity @s Inventory[{tag:{nihility:{IsArrow:1b}}}]
##remove 1 from quiver
execute store result score arrows nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.Quiver
scoreboard players remove arrows nihility.data 1
execute store result storage nihility:storage root.temp.item.tag.nihility.Quiver int 1 run scoreboard players get arrows nihility.data
##remove 1 from using arrow
execute store result score using_arrow nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].Count
scoreboard players remove using_arrow nihility.data 1
execute store result storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].Count byte 1 run scoreboard players get using_arrow nihility.data


execute if score arrows nihility.data matches 0 run function nihility:item/quiver/arrow_shot/empty_quiver
execute if score arrows nihility.data matches 1.. if score using_arrow nihility.data matches 0 run function nihility:item/quiver/arrow_shot/empty_slot

execute if score arrows nihility.data matches 1.. run function nihility:item/quiver/arrow_shot/save_data