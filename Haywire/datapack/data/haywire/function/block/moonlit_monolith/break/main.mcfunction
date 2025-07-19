# Break a moonlit monolith when base block is missing

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"haywire:technical","translate":"block.haywire.moonlit_monolith.name"}},id:"minecraft:furnace"}}] at @s run function haywire:block/moonlit_monolith/break/kill_item
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"haywire:moonlit_monolith"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function haywire:block/hopper_updating/undo