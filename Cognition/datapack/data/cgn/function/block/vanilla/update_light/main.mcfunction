# Functions to update light levels for a custom block

data remove entity @s brightness
scoreboard players set #temp_0 cgn.dummy 0
execute if block ~ ~ ~ #cgn:opaque align xyz positioned ~ ~-0.5 ~ run function cgn:block/vanilla/update_light/edit_brightness