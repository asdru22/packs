data modify storage asy:storage root.gen.temp.progress set value 1
function asy:technical/gen/scan/shape
execute store result score x asy.data run data get entity @s Pos[0]
execute store result score z asy.data run data get entity @s Pos[2]
execute store result storage asy:storage root.gen.temp.x int 1 run scoreboard players get x asy.data
execute store result storage asy:storage root.gen.temp.z int 1 run scoreboard players get z asy.data
data modify storage asy:storage root.gen.out insert -1 from storage asy:storage root.gen.temp