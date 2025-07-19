# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #cgn:opaque run function cgn:block/vanilla/update_light/main
tag @s remove cgn.newly_placed_update_light