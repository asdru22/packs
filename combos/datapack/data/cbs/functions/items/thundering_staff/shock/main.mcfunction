# get pos of entity
data modify storage cbs:storage root.temp.pos set from entity @s Pos
execute store result score #x2 cbs.dummy store result score #x cbs.dummy2 run data get storage cbs:storage root.temp.pos[0] 100
execute store result score #y2 cbs.dummy store result score #y cbs.dummy2 run data get storage cbs:storage root.temp.pos[1] 100
execute store result score #z2 cbs.dummy store result score #z cbs.dummy2 run data get storage cbs:storage root.temp.pos[2] 100
# get offset vector
execute facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage cbs:storage root.temp.vector set from entity @s Pos
# get speed from offset
execute store result score #x_speed cbs.dummy2 run data get storage cbs:storage root.temp.vector[0] -100
execute store result score #y_speed cbs.dummy2 run data get storage cbs:storage root.temp.vector[1] -100
execute store result score #z_speed cbs.dummy2 run data get storage cbs:storage root.temp.vector[2] -100

# get pos of execution context??
teleport @s ~ ~ ~
data modify storage cbs:storage root.temp.pos_end set from entity @s Pos
execute store result score #x cbs.dummy run data get storage cbs:storage root.temp.pos_end[0] 100
execute store result score #y cbs.dummy run data get storage cbs:storage root.temp.pos_end[1] 100
execute store result score #z cbs.dummy run data get storage cbs:storage root.temp.pos_end[2] 100

scoreboard players operation #x cbs.dummy -= #x2 cbs.dummy
scoreboard players operation #y cbs.dummy -= #y2 cbs.dummy
scoreboard players operation #z cbs.dummy -= #z2 cbs.dummy

# go back to original position
data modify entity @s Pos set from storage cbs:storage root.temp.pos

execute at @s run function cbs:items/thundering_staff/shock/loop

kill @s