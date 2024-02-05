############################################################
# Modifies the item in storage
############################################################

data modify storage dsl:storage root.temp.ingredient set from block ~ ~ ~ Items[{Slot:3b}]
# custom ingredients into mundane
execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"snowbell_mush"} if data storage dsl:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run data modify storage dsl:storage root.temp.item.tag.Potion set value "minecraft:mundane"
execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"mirage_blossom"} if data storage dsl:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run data modify storage dsl:storage root.temp.item.tag.Potion set value "minecraft:mundane"

# increase time
execute if data storage dsl:storage root.temp.ingredient{id:"minecraft:redstone"} if data storage dsl:storage root.temp.item.tag.dsl.potion{can_extend:1b} run function dsl:block/brewing_stand/brewing/edit_potion/extend
# amplify
execute if data storage dsl:storage root.temp.ingredient{id:"minecraft:glowstone_dust"} if data storage dsl:storage root.temp.item.tag.dsl.potion{can_amplify:1b} run function dsl:block/brewing_stand/brewing/edit_potion/amplify

# make splash
execute if data storage dsl:storage root.temp.ingredient{id:"minecraft:gunpowder"} if data storage dsl:storage root.temp.item.tag.dsl.potion.id if data storage dsl:storage root.temp.item{id:"minecraft:potion"} run function dsl:block/brewing_stand/brewing/edit_potion/make_splash

# make lingering
execute if data storage dsl:storage root.temp.ingredient{id:"minecraft:dragon_breath"} if data storage dsl:storage root.temp.item.tag.dsl.potion.id if data storage dsl:storage root.temp.item{id:"minecraft:splash_potion"} run function dsl:block/brewing_stand/brewing/edit_potion/make_lingering

# custom potion based on ingredient
execute if data storage dsl:storage root.temp.item.tag{Potion:"minecraft:awkward"} run function dsl:block/brewing_stand/brewing/brew_custom_potion/main