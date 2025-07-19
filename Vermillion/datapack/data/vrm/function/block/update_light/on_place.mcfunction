# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #vrm:opaque run function vrm:block/update_light/main
tag @s remove vrm.newly_placed_update_light
