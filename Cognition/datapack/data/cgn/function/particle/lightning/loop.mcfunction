# store original pos + offset
execute store result score #x cgn.dummy run scoreboard players operation #x cgn.dummy2 += #x_speed cgn.dummy2
execute store result score #y cgn.dummy run scoreboard players operation #y cgn.dummy2 += #y_speed cgn.dummy2
execute store result score #z cgn.dummy run scoreboard players operation #z cgn.dummy2 += #z_speed cgn.dummy2

#offset x
execute store result score #rand cgn.dummy run random value -50..50
execute store result storage cgn:storage root.temp.pos[0] double 0.01 run scoreboard players operation #x cgn.dummy += #rand cgn.dummy
#offset y
execute store result score #rand cgn.dummy run random value -50..50
execute store result storage cgn:storage root.temp.pos[1] double 0.01 run scoreboard players operation #y cgn.dummy += #rand cgn.dummy
#offset z
execute store result score #rand cgn.dummy run random value -50..50
execute store result storage cgn:storage root.temp.pos[2] double 0.01 run scoreboard players operation #z cgn.dummy += #rand cgn.dummy
#update pos
data modify entity @s Pos set from storage cgn:storage root.temp.pos
#raycast
execute facing entity @s feet run function cgn:particle/lightning/light_loop
# iterate
scoreboard players remove #loop cgn.dummy 1
execute if score #loop cgn.dummy matches 1.. at @s unless block ~ ~ ~ #cgn:full_collision run function cgn:particle/lightning/loop