############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage aar:storage root.temp.item.tag.aar.durability[0] int 1 run scoreboard players get @s aar.int

# Set repaired tag if the max and current durabilities are the same
execute store result score @s aar.int2 run data get storage aar:storage root.temp.item.tag.aar.durability[1] 1
data modify storage aar:storage root.temp.item.tag.aar.repaired set value 0b
execute if score @s aar.int = @s aar.int2 run data modify storage aar:storage root.temp.item.tag.aar.repaired set value 1b
