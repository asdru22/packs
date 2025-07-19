# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #haywire:opaque run function haywire:block/update_light/main
tag @s remove haywire.newly_placed_update_light
