data modify entity @s Pos set from storage gh:storage root.temp.motion
execute at @s run tp @s ~ ~ ~ facing 0.0 0 0.0 
data modify storage gh:storage root.temp.inverse_trig set from entity @s Rotation

# Invert Rotation
execute store result score $temp gh.data run data get storage gh:storage root.temp.inverse_trig[0] -1000
execute store result storage gh:storage root.temp.inverse_trig[0] float 0.001 run scoreboard players get $temp gh.data
execute store result score $temp gh.data run data get storage gh:storage root.temp.inverse_trig[1] -1000
execute store result storage gh:storage root.temp.inverse_trig[1] float 0.001 run scoreboard players get $temp gh.data