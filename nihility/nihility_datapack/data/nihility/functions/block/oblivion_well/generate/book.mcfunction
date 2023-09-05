scoreboard players operation lapis nihility.data -= req_lapis nihility.data
scoreboard players set book nihility.data 0

execute store result entity @s ArmorItems[3].tag.nihility.lapis int 1 run scoreboard players get lapis nihility.data
execute store result entity @s ArmorItems[3].tag.nihility.book int 1 run scoreboard players get book nihility.data

function nihility:block/oblivion_well/generate/randomize_list/init

loot spawn ~ ~1.5 ~ loot nihility:item/mystic_book

execute store result score lapis nihility.data run data get entity @s ArmorItems[3].tag.nihility.lapis
execute store result score book nihility.data run data get entity @s ArmorItems[3].tag.nihility.book

data merge entity @s {CustomNameVisible:true}
item modify entity @s armor.head nihility:oblivion_well_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name

scoreboard players set score nihility.data 10
scoreboard players operation score nihility.data *= req_lapis nihility.data
scoreboard players operation score nihility.data *= level nihility.data


scoreboard players operation global nihility.void_score += score nihility.data
execute as @a[distance=..15] run scoreboard players operation @s nihility.void_score += score nihility.data
function nihility:block/voidlinker/void_score/main