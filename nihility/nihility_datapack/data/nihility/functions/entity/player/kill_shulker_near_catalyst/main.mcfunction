advancement revoke @s only nihility:technical/player/kill_shulker_near_catalyst
#tellraw @p {"nbt":"PickupDelay","entity":"@e[type=item,limit=1,sort=nearest,nbt={Item:{id:\"minecraft:structure_block\"}}]"}
schedule function nihility:entity/player/kill_shulker_near_catalyst/schedule 1t