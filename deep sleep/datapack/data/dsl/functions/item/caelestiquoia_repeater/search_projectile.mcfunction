function dsl:item/caelestiquoia_repeater/scan_slots

execute if entity @s[gamemode=creative] if score $success dsl.dummy matches 0 run data modify storage dsl:storage root.temp.proj_found set value {id:"minecraft:arrow"}

execute if data storage dsl:storage root.temp.proj_found run function dsl:item/caelestiquoia_repeater/found