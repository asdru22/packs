execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"font":"cgn:technical","translate":"block.cgn.smoldering_vortex.name"}'},id:"minecraft:dropper"}}] at @s run loot replace entity @s contents loot cgn:blocks/smoldering_vortex
function cgn:block/vanilla/hopper_updating/undo

particle minecraft:item{item:{id:"minecraft:dropper",components:{"minecraft:item_model":"cgn:block/smoldering_vortex"}}} ~ ~ ~ 0.4 0.4 0.4 0.07 100 normal

kill