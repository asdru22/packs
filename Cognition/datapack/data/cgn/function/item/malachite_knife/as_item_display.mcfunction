$data merge entity @s {Rotation:$(rotation),teleport_duration:2,transformation:{left_rotation:[0f,-0.696f,0f,0.718f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},view_range:50}
tag @s add cgn.tick
tag @s add cgn.projectile
tag @s add cgn.malachite_knife
tag @s add cgn.projectile.no_timer
tag @s add cgn.projectile.setup
data modify entity @s item set from storage cgn:storage root.temp.item

scoreboard players set @s cgn.animation_timer 2400

data modify entity @s item.components."minecraft:custom_data".cgn.owner set from storage cgn:storage root.temp.uuid

data modify entity @s item.components."minecraft:custom_data".cgn.uuid set from entity @s UUID

execute if score $mindflare cgn.dummy matches 1.. run tag @s add cgn.malachite_knife.mindflare
execute if score $mindflare cgn.dummy matches 1.. run scoreboard players set @s cgn.mindflare.piercing 3