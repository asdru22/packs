############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage aar:storage root.temp
data modify storage aar:storage root.temp.item set from entity @s SelectedItem

# Sets the item's data in storage
function aar:item/durability/modify/main
execute unless data storage aar:storage root.temp.item run item replace entity @s weapon.mainhand with air
item modify entity @s weapon.mainhand aar:durability_lore
data modify storage aar:storage root.temp.item set from entity @s SelectedItem
data modify storage aar:storage root.temp.item.tag.display.Lore[-3] set from storage aar:storage root.temp.item.tag.display.Lore[-1]
data remove storage aar:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.mainhand aar:copy_nbt
