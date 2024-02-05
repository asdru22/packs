data remove entity @s brightness
scoreboard players set @s dsl.dummy 0
execute if block ~ ~ ~ #dsl:opaque align xyz positioned ~ ~-0.5 ~ run function dsl:block/lighting/edit_brightness