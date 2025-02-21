############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.can_extend
data remove storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.can_amplify
execute if data storage srn:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage srn:storage root.temp.item.components."minecraft:hide_tooltip" set value {}

function #srn:block/brewing_stand/extend