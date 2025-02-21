############################################################
# Runs commands off a potion in slot 1
############################################################

data remove storage srn:storage root.temp
data modify storage srn:storage root.temp.item set from block ~ ~ ~ Items[{Slot:1b}]
function srn:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage srn:storage root.temp.item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage srn:storage root.temp.item