############################################################
# Modifies the item in storage
############################################################
data modify storage srn:storage root.temp.ingredient set from block ~ ~ ~ Items[{Slot:3b}]
# custom ingredients into mundane
execute if data storage srn:storage root.temp.ingredient.components."minecraft:custom_data".srn{brewing_ingredient:1b} if data storage srn:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run data modify storage srn:storage root.temp.item.components."minecraft:potion_contents".potion set value "minecraft:mundane"

# custom potion based on ingredient
execute if data storage srn:storage root.temp.item.components."minecraft:potion_contents"{potion:"minecraft:awkward"} run function #srn:block/brewing_stand/brew_custom_potion

# increase time
execute if data storage srn:storage root.temp.ingredient{id:"minecraft:redstone"} if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion{can_extend:1b} run function srn:block/brewing_stand/brewing/edit_potion/extend
# amplify
execute if data storage srn:storage root.temp.ingredient{id:"minecraft:glowstone_dust"} if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion{can_amplify:1b} run function srn:block/brewing_stand/brewing/edit_potion/amplify
# make splash
execute if data storage srn:storage root.temp.ingredient{id:"minecraft:gunpowder"} if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.id if data storage srn:storage root.temp.item{id:"minecraft:potion"} run function srn:block/brewing_stand/brewing/edit_potion/make_splash

# make lingering
execute if data storage srn:storage root.temp.ingredient{id:"minecraft:dragon_breath"} if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn.potion.id if data storage srn:storage root.temp.item{id:"minecraft:splash_potion"} run function srn:block/brewing_stand/brewing/edit_potion/make_lingering