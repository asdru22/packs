############################################################
# Runs commands off a potion in slot 1
############################################################

data remove storage dsl:storage root.temp
data modify storage dsl:storage root.temp.item set from block ~ ~ ~ Items[{Slot:1b}]
function dsl:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage dsl:storage root.temp.item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage dsl:storage root.temp.item