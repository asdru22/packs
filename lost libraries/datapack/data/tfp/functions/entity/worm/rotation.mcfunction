data modify storage tfp:storage root.temp.transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}

# calculates rotation transformation angles using yaw and pitch respectively.
execute store result storage tfp:storage root.temp.transformation.left_rotation.angle float -0.00001745329251 run data get storage tfp:storage root.temp.rotation[0] 1000
execute store result storage tfp:storage root.temp.transformation.right_rotation.angle float 0.00001745329251 run data get storage tfp:storage root.temp.rotation[1] 1000

# resets entity rotation.
data merge entity @s {Rotation:[0f,0f],interpolation_duration:1,start_interpolation:0}

# applies rotation transformations.
data modify entity @s transformation merge from storage tfp:storage root.temp.transformation