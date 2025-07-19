############################################################
# Runs commands off a potion in slot 2
############################################################

data remove storage cgn:storage root.temp
data modify storage cgn:storage root.temp.item set from block ~ ~ ~ Items[{Slot:2b}]
function cgn:block/vanilla/brewing_stand/brewing/modify_items/modify_storage
data modify storage cgn:storage root.temp.item.Slot set value 2b
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage cgn:storage root.temp.item