setblock ~ ~ ~ air
setblock ~ ~ ~ vault

data modify block ~ ~ ~ config.loot_table set value "haywire:chests/vault/ocelot_temple/treasure"

summon item_display ~ ~ ~ {Tags:[haywire.temp]}

loot replace entity @n[tag=haywire.temp] contents loot haywire:items/diamond_key

data modify block ~ ~ ~ config.key_item set from entity @n[tag=haywire.temp] item

kill @n[tag=haywire.temp]