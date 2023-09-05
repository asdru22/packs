data remove storage nihility:storage root.temp.item2.tag
execute store result score count nihility.data run data get storage nihility:storage root.temp.data[-1].Count
data modify storage nihility:storage root.temp.item2.id set from storage nihility:storage root.temp.data[-1].id
data modify storage nihility:storage root.temp.item2.tag set from storage nihility:storage root.temp.data[-1].tag

function nihility:item/offering_basket/items
scoreboard players operation value nihility.data *= count nihility.data
scoreboard players operation score nihility.data += value nihility.data
data remove storage nihility:storage root.temp.data[-1]
execute if data storage nihility:storage root.temp.data[] run function nihility:item/offering_basket/iterate