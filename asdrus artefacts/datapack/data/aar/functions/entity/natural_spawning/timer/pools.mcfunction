#setup data
data remove storage aar:storage root.temp.spawning

# mob pool
execute store result score $rng aar.int run random value 1..10
#-----

execute if score $rng aar.int matches 1..5 if score $daytime aar.int matches 17000..19000 run data modify storage aar:storage root.temp.spawning set value {id:"midnight_skeleton",amount_min:1,amount_max:3,distance:10,range:30,height:10,cap:30}

#-----

function aar:entity/natural_spawning/times with storage aar:storage root.temp.spawning