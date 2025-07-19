############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.can_extend
data remove storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.can_amplify
execute if data storage cgn:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:hide_additional_tooltip" set value {}

function cgn:block/vanilla/brewing_stand/custom/extend