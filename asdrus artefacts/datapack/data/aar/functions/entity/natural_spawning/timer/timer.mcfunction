execute store result score $daytime aar.int run time query daytime
#
execute as @a at @s run function aar:entity/natural_spawning/timer/pools
# randomize next timer
execute store result storage aar:storage root.temp.int int 1 run random value 35..70
function aar:entity/natural_spawning/timer/schedule with storage aar:storage root.temp.int