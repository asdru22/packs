execute store result score my_lapis nihility.data run data get storage nihility:storage root.temp.item.Count
function nihility:block/oblivion_well/interaction/lapis/add_loop
execute store result entity @s ArmorItems[3].tag.nihility.lapis int 1 run scoreboard players get lapis nihility.data