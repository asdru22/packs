scoreboard players set $multishot dsl.dummy 1
execute rotated ~10 ~ run function dsl:item/caelestiquoia_repeater/use/projectile
execute rotated ~-10 ~ run function dsl:item/caelestiquoia_repeater/use/projectile
scoreboard players reset $multishot dsl.dummy
