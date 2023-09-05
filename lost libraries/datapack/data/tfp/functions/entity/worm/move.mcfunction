execute rotated ~ 0 facing entity @s feet run tp @s ^ ^ ^.5 facing ^ ^ ^1
data modify storage tfp:storage root.temp.rotation set from entity @s Rotation
execute on passengers run function tfp:entity/worm/rotation
execute store result entity @s Air short 1 run scoreboard players get #air_toggle tfp.data
execute at @s on origin if entity @s[type=snowball] run function tfp:entity/worm/move