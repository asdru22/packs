############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.can_amplify
data remove storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.can_extend

function cgn:block/vanilla/brewing_stand/custom/amplify