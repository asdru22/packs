execute unless data storage nihility:storage root.temp.item.id if score sneak nihility.data matches 1 as @e[type=item,tag=nihility.item_augment,limit=1,sort=nearest] run function nihility:block/awakening_table/interaction/activate
execute unless data storage nihility:storage root.temp.item.id unless score sneak nihility.data matches 1 as @e[type=item,tag=nihility.item_augment,limit=1,sort=nearest] at @s run function nihility:block/awakening_table/interaction/take
execute if data storage nihility:storage root.temp.item.id unless score sneak nihility.data matches 1 run function nihility:block/awakening_table/interaction/place