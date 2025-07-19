############################################################
# Modifies the item in storage
############################################################
data modify storage cgn:storage root.temp.ingredient set from block ~ ~ ~ Items[{Slot:3b}]

# custom ingredients make mundane potions
execute if data storage cgn:storage root.temp.ingredient.components."minecraft:custom_data".cgn{brewing_ingredient:1b} if data storage cgn:storage root.temp.item{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}} run data modify storage cgn:storage root.temp.item.components."minecraft:potion_contents".potion set value "minecraft:mundane"

# custom potion based on ingredient
execute if data storage cgn:storage root.temp.item.components."minecraft:potion_contents"{potion:"minecraft:awkward"} run function cgn:block/vanilla/brewing_stand/custom/brew_potion

# increase time
execute if data storage cgn:storage root.temp.ingredient{id:"minecraft:redstone"} if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion{can_extend:1b} run function cgn:block/vanilla/brewing_stand/brewing/edit_potion/extend
# amplify
execute if data storage cgn:storage root.temp.ingredient{id:"minecraft:glowstone_dust"} if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion{can_amplify:1b} run function cgn:block/vanilla/brewing_stand/brewing/edit_potion/amplify
# make splash
execute if data storage cgn:storage root.temp.ingredient{id:"minecraft:gunpowder"} if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.id if data storage cgn:storage root.temp.item{id:"minecraft:potion"} run function cgn:block/vanilla/brewing_stand/brewing/edit_potion/make_splash

# make lingering
execute if data storage cgn:storage root.temp.ingredient{id:"minecraft:dragon_breath"} if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.potion.id if data storage cgn:storage root.temp.item{id:"minecraft:splash_potion"} run function cgn:block/vanilla/brewing_stand/brewing/edit_potion/make_lingering