tellraw @p {"nbt":"root.temp.list[0]","storage":"nihility:storage"}
data remove storage nihility:storage root.temp.list[0].Count
## check if item matches | 0 = same, 1 = different
execute store success score found nihility.data run data modify storage nihility:storage root.temp.list[0] set from storage nihility:storage root.temp.input
execute unless data storage nihility:storage root.temp.list[] run scoreboard players set found nihility.data 1
#signal loop
execute if score found nihility.data matches 0 run function nihility:item/quiver/found_same
## next loop
scoreboard players add iter nihility.data 1
data remove storage nihility:storage root.temp.list[0]
## repeat loop?
execute if score found nihility.data matches 1 unless score findSame nihility.data matches 1 if data storage nihility:storage root.temp.list[] run function nihility:item/quiver/list
## add item to list
execute unless score findSame nihility.data matches 1 run data modify storage nihility:storage root.temp.item.tag.nihility.QuiverItems insert 0 from storage nihility:storage root.temp.item.tag.Items