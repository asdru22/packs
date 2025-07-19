tag @s remove cgn.double_edged_sword.returning
data modify entity @s Rotation set from storage cgn:storage root.temp.rotation

playsound cgn:item.double_edged_sword.punch master @a[distance=..16] ~ ~ ~ 0.66 1

function cgn:technical/macros/damage_slot/main {slot:"container.0",amount:1}

scoreboard players set @s cgn.animation_timer 200