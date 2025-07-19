# Break a moonlit monolith when base block is missing

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"vrm:technical","translate":"block.vrm.moonlit_monolith.name"}},id:"minecraft:furnace"}}] at @s run function vrm:block/moonlit_monolith/break/kill_item
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"vrm:block/moonlit_monolith"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function vrm:block/hopper_updating/undo