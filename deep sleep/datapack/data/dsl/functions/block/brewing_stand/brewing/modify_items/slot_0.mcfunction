############################################################
# Runs commands off a potion in slot 0
############################################################

data remove storage dsl:storage root.temp
data modify storage dsl:storage root.temp.item set from block ~ ~ ~ Items[{Slot:0b}]
function dsl:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage dsl:storage root.temp.item.Slot set value 0b
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage dsl:storage root.temp.item