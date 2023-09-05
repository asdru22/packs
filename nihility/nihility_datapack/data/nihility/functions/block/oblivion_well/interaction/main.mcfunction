execute store result score lapis nihility.data run data get entity @s ArmorItems[3].tag.nihility.lapis
execute store result score book nihility.data run data get entity @s ArmorItems[3].tag.nihility.book
execute unless score lapis nihility.data matches 20 if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:lapis_lightzuli"} run function nihility:block/oblivion_well/interaction/lapis/main
execute if data storage nihility:storage root.temp.item{id:"minecraft:book"} run function nihility:block/oblivion_well/interaction/book

execute unless data storage nihility:storage root.temp.item run function nihility:block/oblivion_well/interaction/no_item/main

execute store result score lapis nihility.data run data get entity @s ArmorItems[3].tag.nihility.lapis
execute store result score book nihility.data run data get entity @s ArmorItems[3].tag.nihility.book

data merge entity @s {CustomNameVisible:true}
item modify entity @s armor.head nihility:oblivion_well_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name