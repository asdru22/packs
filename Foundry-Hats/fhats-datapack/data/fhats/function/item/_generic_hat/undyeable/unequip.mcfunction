# Common start function for finding items in a player's inventory
data remove storage fhats:temp root
data modify storage fhats:temp root.inventory set value []

# Put all items with the specified data in a list
$data modify storage fhats:temp root.inventory append from entity @s Inventory[{id:"minecraft:poisonous_potato",components:{"minecraft:custom_data":{fhats:{id:"$(id)"}}}}]

# If the list isn't empty, search through it
# The specified function path is run for each item found
execute if data storage fhats:temp root.inventory[-1] run function fhats:item/_generic_hat/undyeable/loop