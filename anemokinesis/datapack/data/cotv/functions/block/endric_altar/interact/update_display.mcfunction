execute store result score height cotv.dummy run data get entity @s Pos[1]
item modify entity @s armor.head cotv:endric_altar_display
data modify storage cotv:storage root.temp.display set from entity @s ArmorItems[3].tag.display.Name
execute at @s positioned ~ ~1 ~ as @e[type=armor_stand,limit=1,sort=nearest,tag=cotv.block.endric.altar.display,distance=..0.2] run function cotv:block/endric_altar/interact/stand