data merge entity @s {Particle:{type:"entity_effect"},ReapplicationDelay:20,Radius:3f,RadiusPerTick:-0.005f,RadiusOnUse:-0.5f,Duration:600}
data modify entity @s potion_contents.custom_color set from storage cgn:storage root.temp.item.color

tag @s add cgn.second
tag @s add cgn.projectile.surge_lingering
tag @s add cgn.projectile

tag @s add cgn.projectile.no_timer