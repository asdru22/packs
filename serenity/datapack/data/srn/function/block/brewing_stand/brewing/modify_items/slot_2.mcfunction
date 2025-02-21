############################################################
# Runs commands off a potion in slot 2
############################################################

data remove storage srn:storage root.temp
data modify storage srn:storage root.temp.item set from block ~ ~ ~ Items[{Slot:2b}]
function srn:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage srn:storage root.temp.item.Slot set value 2b
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage srn:storage root.temp.item