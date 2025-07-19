data modify storage cgn:storage root.temp.uuid.out set value 0-

data modify storage cgn:storage root.temp.potion set value {}
data modify storage cgn:storage root.temp.potion.owner set from entity @s UUID
data modify storage cgn:storage root.temp.potion.id set from entity @s Item.id
data modify storage cgn:storage root.temp.potion.color set from entity @s Item.components."minecraft:potion_contents".custom_color
data modify storage cgn:storage root.temp.potion.potion set from entity @s Item.components."minecraft:custom_data".cgn.potion.id

data remove storage cgn:macro root
data modify storage cgn:macro root.UUID set from entity @s UUID
execute summon marker run function cgn:item/vanilla/throwable_potion/as_marker with storage cgn:macro root