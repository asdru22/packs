############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 aar.int run data get storage aar:storage root.temp.item.tag.aar.durability[0] 1
execute store result score #temp_1 aar.int run data get storage aar:storage root.temp.item.tag.aar.durability[1] 1
scoreboard players operation #temp_0 aar.int -= #temp_1 aar.int
execute if score #item_durability_change aar.int < #temp_0 aar.int run scoreboard players operation #item_durability_change aar.int = #temp_0 aar.int
