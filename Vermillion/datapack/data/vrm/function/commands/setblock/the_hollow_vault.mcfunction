setblock ~ ~ ~ air
setblock ~ ~ ~ vault

data modify block ~ ~ ~ config.loot_table set value "vrm:chests/the_hollow"

summon item_display ~ ~ ~ {Tags:[vrm.temp]}

loot replace entity @n[tag=vrm.temp] contents loot vrm:items/scarlet_key

data modify block ~ ~ ~ config.key_item set from entity @n[tag=vrm.temp] item

kill @n[tag=vrm.temp]