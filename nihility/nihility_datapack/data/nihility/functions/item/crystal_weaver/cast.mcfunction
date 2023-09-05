particle item furnace{CustomModelData:6906004} ~ ~0.2 ~ 0 0 0 0.05 5
summon armor_stand ~ ~ ~ {Tags:["nihility.entity","nihility.block.weaved_crystal"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6906004}}]}
execute if score distance nihility.data matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #nihility:passable run function nihility:item/crystal_weaver/rotate
playsound minecraft:block.amethyst_block.place block @a[distance=..16]