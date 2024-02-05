data merge entity @s {ShotAtAngle:1b,LifeTime:20}
data modify storage dsl:storage root.temp.ammo.Count set value 1b
data modify entity @s FireworksItem set from storage dsl:storage root.temp.ammo