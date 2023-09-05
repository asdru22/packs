summon item ~ ~1 ~ {CustomNameVisible:1b,Item:{id:"minecraft:stone",Count:1b},Tags:["asd.display_item","asd.setup"],PickupDelay:10s}
data modify storage asd:data root.temp.uuid set from entity @s UUID
execute as @e[type=item,limit=1,tag=asd.display_item,tag=asd.setup] run function reg:blocks/chests/item_setup 