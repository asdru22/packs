data modify entity @e[type=item,limit=1,sort=nearest,tag=nihility.display] Item set from storage nihility:storage root.temp.list[0]
execute store result score var nihility.data run data get storage nihility:storage root.temp.list[0].Count
item modify entity @s weapon.mainhand nihility:get_item_name
data modify storage nihility:storage root.temp.lore insert 0 from entity @s HandItems[0].tag.display.Name
data remove storage nihility:storage root.temp.list[0]
execute if data storage nihility:storage root.temp.list[] run function nihility:item/quiver/lore/stand

kill @e[tag=nihility.instant]