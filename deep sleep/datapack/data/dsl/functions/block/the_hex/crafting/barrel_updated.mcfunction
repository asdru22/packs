## Move the barrel data
data remove storage dsl:storage root.temp
data modify storage dsl:storage root.temp.barrel_data set from entity @s item.tag.stored_barrel_data

## Clearing the input
data modify storage dsl:storage root.temp.barrel_data_output set from storage dsl:storage root.temp.barrel_data[0][{Slot:16b}]
execute store success score @s dsl.dummy run data modify storage dsl:storage root.temp.barrel_data_output set from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:16b}] run scoreboard players set @s dsl.dummy 1
execute if entity @s[scores={dsl.dummy=1..},tag=dsl.the_hex.assembled_output,tag=dsl.the_hex.open] run function dsl:block/the_hex/crafting/clear_input

## Configure Slots
execute if data storage dsl:storage root.temp.barrel_data[1][{Slot:0b}] run function dsl:block/the_hex/crafting/shift_click
execute if predicate dsl:block/the_hex/has_invalid_items run function dsl:block/the_hex/crafting/manage_invalids/export

## Recipe checks
execute if data storage dsl:storage root.temp.barrel_data[1][{}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if data storage dsl:storage root.temp.barrel_data[1][{}] run tag @s remove dsl.the_hex.assembled_output
execute if data storage dsl:storage root.temp.barrel_data[1][{Slot:13b,tag:{dsl:{hex_fuel:true}}}] run function dsl:block/the_hex/crafting/prepare_recipes
#
## Set the tags at the end
data modify entity @s item.tag.stored_barrel_data[1] set from block ~ ~ ~ Items