scoreboard players reset .move asd.d
data remove storage asd:storage root.temp.click
execute as @e[type=slime,tag=asd.click,nbt={HurtTime:10s}] at @s positioned ~0.2 ~-0.25 ~ run data modify storage asd:storage root.temp.click set from entity @e[type=armor_stand,distance=..0.1,limit=1,sort=nearest] ArmorItems[3].tag.asd
execute if data storage asd:storage root.temp.click run function asd:block/billboard/impl/clicking/select