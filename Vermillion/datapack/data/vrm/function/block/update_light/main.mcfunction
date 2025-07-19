# Functions to update light levels for a custom block

data remove entity @s brightness
scoreboard players set #temp_0 vrm.dummy 0
execute if block ~ ~ ~ #vrm:opaque align xyz positioned ~ ~-0.5 ~ run function vrm:block/update_light/edit_brightness