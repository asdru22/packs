############################################################
# Runs commands off a potion in slot 1
############################################################

data remove storage cgn:storage root.temp
data modify storage cgn:storage root.temp.item set from block ~ ~ ~ Items[{Slot:1b}]
function cgn:block/vanilla/brewing_stand/brewing/modify_items/modify_storage
data modify storage cgn:storage root.temp.item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage cgn:storage root.temp.item