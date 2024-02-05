execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"mirage_blossom"} run function dsl:block/brewing_stand/brewing/brew_custom_potion/mirage
execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"snowbell_mush"} run data modify storage dsl:storage root.temp.item.tag.Potion set value "minecraft:mundane"

execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"snowbell_mush"} if data storage dsl:storage root.temp.item.tag.dsl{id:"mirage_potion"} run function dsl:block/brewing_stand/brewing/brew_custom_potion/third_eye

execute if data storage dsl:storage root.temp.ingredient.tag.dsl{id:"sky_gel"} run function dsl:block/brewing_stand/brewing/brew_custom_potion/denial