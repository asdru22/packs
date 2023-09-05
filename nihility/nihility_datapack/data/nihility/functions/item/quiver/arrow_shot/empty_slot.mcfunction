data remove storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0]
execute if data storage nihility:storage root.temp.item.tag.nihility.QuiverItems[] store result score using_arrow nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].Count


tag @s add nihility.me
summon armor_stand 0 0 0 {Tags:["nihility.temp"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute as @e[type=armor_stand,tag=nihility.temp] run function nihility:item/quiver/hold_weapon/stand
tag @s remove nihility.me