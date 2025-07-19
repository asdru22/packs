# Functions to update light levels for a custom block

data remove entity @s brightness
scoreboard players set #temp_0 haywire.dummy 0
execute if block ~ ~ ~ #haywire:opaque align xyz positioned ~ ~-0.5 ~ run function haywire:block/update_light/edit_brightness