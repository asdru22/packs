$data merge entity @s {Rotation:$(rotation),teleport_duration:2,transformation:{translation:[0.0f,0.2f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:50}
tag @s add cgn.tick
tag @s add cgn.projectile
tag @s add cgn.double_edged_sword
tag @s add cgn.projectile.no_timer
tag @s add cgn.projectile.setup

data modify entity @s item set from storage cgn:storage root.temp.item

scoreboard players set @s cgn.animation_timer 200

data modify entity @s item.components."minecraft:custom_data".cgn.owner set from storage cgn:storage root.temp.uuid

data modify entity @s item.components."minecraft:custom_data".cgn.uuid set from entity @s UUID

execute if score $temp cgn.dummy matches 0 run function cgn:technical/macros/damage_slot/main {slot:"contents",amount:1}

execute if items entity @s contents #swords[minecraft:item_name='{"translate": "item.cgn.double_edged_gloomstone_sword"}'] run return run function cgn:item/double_edged_sword/gloomstone/setup
execute if items entity @s contents #swords[minecraft:item_name='{"translate": "item.cgn.double_edged_malachite_sword"}'] run return run function cgn:item/double_edged_sword/malachite/setup
execute if items entity @s contents #swords[minecraft:item_name='{"translate": "item.cgn.double_edged_ebonite_sword"}'] run return run function cgn:item/double_edged_sword/ebonite/setup