function cgn:block/vanilla/hopper_updating/undo
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"translate":"block.cgn.stygian_totem.name"}'},id:"minecraft:dropper"}}] at @s run loot replace entity @s contents loot cgn:blocks/stygian_totem

particle minecraft:item{item:{id:"minecraft:dropper",components:{"minecraft:item_model":"cgn:block/stygian_totem"}}} ~ ~ ~ 0.4 0.4 0.4 0.07 100 normal

kill @s