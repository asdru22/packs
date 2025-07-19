############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage cgn:storage root.temp.item.id set value "minecraft:lingering_potion"
data modify storage cgn:storage root.temp.item.components."minecraft:hide_additional_tooltip" set value {}

function cgn:block/vanilla/brewing_stand/custom/make_lingering