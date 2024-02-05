############################################################
# Commands to run as a pottery table that was just opened. Fixes edge case bugs
############################################################

data remove storage dsl:storage root.temp
data modify storage dsl:storage root.temp.block set from block ~ ~ ~
setblock ~ ~ ~ spruce_planks
setblock ~ ~ ~ barrel
data modify block ~ ~ ~ {} merge from storage dsl:storage root.temp.block