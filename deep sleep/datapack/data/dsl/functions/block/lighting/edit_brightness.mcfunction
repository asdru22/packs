data merge entity @s {brightness:{sky:0,block:0}}
execute if entity @s[tag=!dsl.suspicious_snow] run function dsl:block/lighting/sky_light
execute positioned ~1 ~ ~ run function dsl:block/lighting/check_light
execute positioned ~ ~ ~1 run function dsl:block/lighting/check_light
execute positioned ~-1 ~ ~ run function dsl:block/lighting/check_light
execute positioned ~ ~ ~-1 run function dsl:block/lighting/check_light
execute positioned ~ ~-1 ~ run function dsl:block/lighting/check_light
scoreboard players remove @s[scores={dsl.dummy=1..}] dsl.dummy 1
execute store result entity @s brightness.block int 1 run scoreboard players get @s dsl.dummy