execute if data storage dsl:storage root.temp.item{id:"minecraft:bone_meal"} if entity @s[scores={dsl.dummy=..6}] run function dsl:block/mirage_blossom/interact/bone_meal

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"sky_gel"} if entity @s[scores={dsl.dummy=7}] run function dsl:block/mirage_blossom/sky_gel/init