# store original pos + offset
execute store result score #x cbs.dummy run scoreboard players operation #x cbs.dummy2 += #x_speed cbs.dummy2
execute store result score #y cbs.dummy run scoreboard players operation #y cbs.dummy2 += #y_speed cbs.dummy2
execute store result score #z cbs.dummy run scoreboard players operation #z cbs.dummy2 += #z_speed cbs.dummy2

#offset x
execute store result score #rand cbs.dummy run random value -15..15
execute store result storage cbs:storage root.temp.pos[0] double 0.01 run scoreboard players operation #x cbs.dummy += #rand cbs.dummy
#offset y
execute store result score #rand cbs.dummy run random value -15..15
execute store result storage cbs:storage root.temp.pos[1] double 0.01 run scoreboard players operation #y cbs.dummy += #rand cbs.dummy
#offset z
execute store result score #rand cbs.dummy run random value -15..15
execute store result storage cbs:storage root.temp.pos[2] double 0.01 run scoreboard players operation #z cbs.dummy += #rand cbs.dummy
#update pos
data modify entity @s Pos set from storage cbs:storage root.temp.pos
#raycast
execute facing entity @s feet run function cbs:items/divine_orb/radiance/light_loop
# iterate
scoreboard players remove #loop cbs.dummy 1
execute if score #loop cbs.dummy matches 1.. at @s if block ~ ~ ~ #cbs:raycast_ignore run function cbs:items/divine_orb/radiance/loop

 