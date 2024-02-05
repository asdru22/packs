data merge entity @s {pickup:1,damage:1}
data modify entity @s Motion set from storage dsl:storage root.temp.motion
data modify entity @s Owner set from storage dsl:storage root.temp.arrow.UUID

execute if data storage dsl:storage root.temp.ammo{id:"minecraft:tipped_arrow"} run data modify entity @s Potion set from storage dsl:storage root.temp.ammo.tag.Potion
execute if data storage dsl:storage root.temp.ammo{id:"minecraft:firework_rocket"} run function dsl:item/caelestiquoia_repeater/use/firework

execute if score $multishot dsl.dummy matches 1 run data merge entity @s {pickup:0}

execute unless data storage dsl:storage root.temp.ammo{id:"minecraft:firework_rocket"} store result entity @s PierceLevel byte 1 run data get storage dsl:storage root.temp.item.tag.Enchantments[{id:"minecraft:piercing"}].lvl

tag @s add dsl.air_toggle