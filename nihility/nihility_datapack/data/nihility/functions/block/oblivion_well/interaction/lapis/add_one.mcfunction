scoreboard players add lapis nihility.data 1
item modify entity @a[advancements={nihility:technical/block/interact/oblivion_well=true}] weapon.mainhand nihility:remove_one
execute store result entity @s ArmorItems[3].tag.nihility.lapis int 1 run scoreboard players get lapis nihility.data
playsound minecraft:block.amethyst_block.place block @a[distance=..10] ~ ~ ~ 10 1