# Runs a function for each item that is found in the player's inventory

# Set the temporary item data and remove this inventory entry from the temporary list
data modify storage fhats:temp root.item set from storage fhats:temp root.inventory[-1]
data remove storage fhats:temp root.inventory[-1]

function fhats:item/_generic_hat/undyeable/replace_item with storage fhats:temp root.item

# If there still are more items, continue
execute if data storage fhats:temp root.inventory[-1] run function fhats:item/_generic_hat/undyeable/loop