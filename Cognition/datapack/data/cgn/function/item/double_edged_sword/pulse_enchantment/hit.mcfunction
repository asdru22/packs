tag @s remove cgn.double_edged_sword.returning
tag @s remove cgn.double_edged_sword
tag @s add cgn.double_edged_sword.pulse
tag @s add cgn.projectile
tag @s add cgn.projectile.no_timer
scoreboard players set @s cgn.animation_timer 100
data modify entity @s Rotation set from storage cgn:storage root.temp.rotation

playsound cgn:item.double_edged_sword.punch master @a[distance=..16] ~ ~ ~ 0.66 1

function cgn:technical/macros/damage_slot/main {slot:"container.0",amount:1}

particle minecraft:gust ~ ~ ~
playsound cgn:item.ebonite_sword.hit player @a[distance=..16] ~ ~ ~ 1 0.9

data merge entity @s {teleport_duration:1,transformation:{left_rotation:[-0.666f,0f,0f,0.746f],right_rotation:[0f,0f,-0.383f,0.924f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

execute on passengers run tag @s remove cgn.double_edged_sword.interaction