data modify storage asd:storage root.gen.temp.progress set value 1
function asd:technical/gen/scan/shape
execute store result score x asd.d run data get entity @s Pos[0]
execute store result score z asd.d run data get entity @s Pos[2]
execute store result storage asd:storage root.gen.temp.x int 1 run scoreboard players get x asd.d
execute store result storage asd:storage root.gen.temp.z int 1 run scoreboard players get z asd.d
data modify storage asd:storage root.gen.out insert -1 from storage asd:storage root.gen.temp