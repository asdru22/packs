data merge entity @s {Tags:[cgn.tick,cgn.projectile,cgn.projectile.setup,cgn.malachite_fragment]}
data modify entity @s data.cgn.owner set from storage cgn:storage root.temp.owner
data modify entity @s data.cgn.uuid set from entity @s UUID

scoreboard players set @s cgn.animation_timer 100

rotate @s ~ ~