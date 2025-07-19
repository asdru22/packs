data modify storage cgn:storage root.temp.motion set from entity @s Motion
execute summon marker run function cgn:technical/math/vector_angle

data remove storage cgn:macro root
execute store result storage cgn:macro root.yaw float 1 run data get storage cgn:storage root.temp.rotation[0]
execute store result storage cgn:macro root.pitch float 1 run data get storage cgn:storage root.temp.rotation[1]
execute on origin at @s anchored eyes positioned ^ ^ ^ run function cgn:entity/projectile/arrow/pyroplastic_bolt/as_owner
kill @s

stopsound @a[distance=..16] * minecraft:entity.arrow.shoot
playsound cgn:entity.pyroplastic_beam player @a[distance=..16] ~ ~ ~ 0.6 0.8