data modify entity @s Pos set from storage cgn:storage root.temp.motion
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
data modify storage cgn:storage root.temp.rotation set from entity @s Rotation
kill @s