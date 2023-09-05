############################################################
# Checks if the item's durability is either going to go over the maximum or under the minimum (break)
############################################################

# Prevent the adaar durability amount from overflowing the maximum value by setting it to the maximum repair value
execute if score #item_durability_change aar.int matches ..-1 run function aar:item/durability/modify/check/set_max

# Find out the new durability of the item (USED IN LATER FUNCTIONS AS WELL)
execute store result score @s aar.int run data get storage aar:storage root.temp.item.tag.aar.durability[0] 1
scoreboard players operation @s aar.int -= #item_durability_change aar.int

# If the durability is less than 0, break the item
execute if entity @s[scores={aar.int=..0}] run function aar:item/durability/modify/break

# If the durability is more than 0, modify the durability of the item
execute if entity @s[scores={aar.int=1..}] run function aar:item/durability/modify/change_item_data