data modify entity @s Rotation[0] set from storage nihility:storage root.temp.rot[0]
execute as @e[type=marker,tag=nihility.trig,limit=1] positioned 0.0 0 0.0 run function nihility:entity/airship/parts/get_pos

data modify entity @s Motion set from storage nihility:storage root.temp.motion