scoreboard players reset .move asy.data
data remove storage asy:storage root.temp.click
execute as @e[type=slime,tag=asy.click,nbt={HurtTime:10s}] if score @s asy.id = .temp asy.data at @s positioned ~0.2 ~-0.25 ~ run data modify storage asy:storage root.temp.click set from entity @e[type=armor_stand,distance=..0.1,limit=1,sort=nearest] ArmorItems[3].tag.asy
execute if data storage asy:storage root.temp.click run function asy:block/billboard/impl/clicking/select