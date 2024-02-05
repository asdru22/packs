data modify storage dsl:storage root.temp.Items set value []

data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:9b}]
data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:19b}]
# fuel
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{dsl:{hex_fuel:true}}}] run data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:13b}]
execute if entity @s[tag=dsl.the_hex.assembled_output] run data modify storage dsl:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:16b}]

data remove block ~ ~ ~ Items[{Slot:1b}]
data remove block ~ ~ ~ Items[{Slot:9b}]
data remove block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:11b}]
data remove block ~ ~ ~ Items[{Slot:19b}]
# fuel
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{dsl:{hex_fuel:true}}}] run data remove block ~ ~ ~ Items[{Slot:13b}]

execute if entity @s[tag=dsl.the_hex.assembled_output] run data remove block ~ ~ ~ Items[{Slot:16b}]

data modify storage dsl:storage root.temp.export_items set from block ~ ~ ~ Items
execute store result score @s dsl.dummy run data get block ~ ~ ~ Items

# Spawns the items on the nearest player that opened the table's gui
execute unless data storage dsl:storage root.temp.export_items[0].tag run data modify storage dsl:storage root.temp.export_items[0].tag set value "{}"
execute if data storage dsl:storage root.temp.export_items[{}] run function dsl:block/the_hex/crafting/manage_invalids/spawn_loop with storage dsl:storage root.temp.export_items[0]
data modify block ~ ~ ~ Items set from storage dsl:storage root.temp.Items