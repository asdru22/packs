summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["nihility.temp","nihility.instant"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
data modify storage nihility:storage root.temp.list set from storage nihility:storage root.temp.item.tag.nihility.QuiverItems
data modify storage nihility:storage root.temp.lore set value []
summon item ~ ~ ~ {Tags:["nihility.display","nihility.instant"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=armor_stand,tag=nihility.temp] at @s run function nihility:item/quiver/lore/stand
data modify storage nihility:storage root.temp.item.tag.display.Lore set from storage nihility:storage root.temp.lore
##execute unless data storage nihility:storage root.temp.item.tag.nihility.QuiverItems[] run data remove 