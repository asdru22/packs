############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.can_amplify
data remove storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.can_extend

function #srn:block/brewing_stand/amplify