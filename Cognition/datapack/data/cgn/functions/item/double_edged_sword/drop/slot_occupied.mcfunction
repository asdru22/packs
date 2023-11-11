data modify storage cgn:storage root.temp.inv set from entity @s Inventory
data remove storage cgn:storage root.temp.inv[{SLot:100b}]
data remove storage cgn:storage root.temp.inv[{SLot:101b}]
data remove storage cgn:storage root.temp.inv[{SLot:102b}]
data remove storage cgn:storage root.temp.inv[{SLot:103b}]
data remove storage cgn:storage root.temp.inv[{SLot:-106b}]
execute store result score #temp cgn.dummy if data storage cgn:storage root.temp.inv[]

execute unless score #temp cgn.dummy matches 36 run loot give @s loot srn:copy_nbt/warped_fungus_on_a_stick
execute if score #temp cgn.dummy matches 36 run loot spawn ~ ~ ~ loot srn:copy_nbt/warped_fungus_on_a_stick