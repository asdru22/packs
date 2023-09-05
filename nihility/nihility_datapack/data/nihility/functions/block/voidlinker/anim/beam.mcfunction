data modify entity @s BeamTarget.X set from storage nihility:storage root.temp.data[0]
execute store result score temp2 nihility.data run data get storage nihility:storage root.temp.data[1] 10
scoreboard players remove temp2 nihility.data 10
execute store result entity @s BeamTarget.Y int 0.1 run scoreboard players get temp2 nihility.data
data modify entity @s BeamTarget.Z set from storage nihility:storage root.temp.data[2]