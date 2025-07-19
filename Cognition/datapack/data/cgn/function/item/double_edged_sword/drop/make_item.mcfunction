data remove entity @s item.components."minecraft:custom_data".cgn.owner
data remove entity @s item.components."minecraft:custom_data".cgn.uuid
data remove entity @s item.components."minecraft:custom_data".cgn.Slot

function cgn:technical/macros/loot/spawn with entity @s item
execute on passengers run kill @s
kill @s