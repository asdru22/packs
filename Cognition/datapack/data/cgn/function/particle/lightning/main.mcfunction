# get pos of entity
data modify storage cgn:storage root.temp.pos set from entity @s Pos
execute store result score #x2 cgn.dummy store result score #x cgn.dummy2 run data get storage cgn:storage root.temp.pos[0] 100
execute store result score #y2 cgn.dummy store result score #y cgn.dummy2 run data get storage cgn:storage root.temp.pos[1] 100
execute store result score #z2 cgn.dummy store result score #z cgn.dummy2 run data get storage cgn:storage root.temp.pos[2] 100
# get offset vector
execute facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage cgn:storage root.temp.vector set from entity @s Pos
# get speed from offset
execute store result score #x_speed cgn.dummy2 run data get storage cgn:storage root.temp.vector[0] -100
execute store result score #y_speed cgn.dummy2 run data get storage cgn:storage root.temp.vector[1] -100
execute store result score #z_speed cgn.dummy2 run data get storage cgn:storage root.temp.vector[2] -100

# get pos of execution context??
teleport @s ~ ~ ~
data modify storage cgn:storage root.temp.pos_end set from entity @s Pos
execute store result score #x cgn.dummy run data get storage cgn:storage root.temp.pos_end[0] 100
execute store result score #y cgn.dummy run data get storage cgn:storage root.temp.pos_end[1] 100
execute store result score #z cgn.dummy run data get storage cgn:storage root.temp.pos_end[2] 100

scoreboard players operation #x cgn.dummy -= #x2 cgn.dummy
execute store result storage cgn:storage root.temp.sqrt.y float 1 run scoreboard players operation #y cgn.dummy -= #y2 cgn.dummy
execute store result storage cgn:storage root.temp.sqrt.z float 1 run scoreboard players operation #z cgn.dummy -= #z2 cgn.dummy

# go back to original position
data modify entity @s Pos set from storage cgn:storage root.temp.pos

execute at @s run function cgn:particle/lightning/loop

kill @s