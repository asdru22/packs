execute summon firework_rocket run function dsl:item/caelestiquoia_repeater/use/projectile_setup
# advancement
execute if data storage dsl:storage root.temp.item.tag.Enchantments[{id:"minecraft:multishot"}] run scoreboard players add @s dsl.dummy2 1
execute if entity @s[scores={dsl.dummy2=30..}] run advancement grant @s only dsl:minecraft/adventure/celebration_mk3