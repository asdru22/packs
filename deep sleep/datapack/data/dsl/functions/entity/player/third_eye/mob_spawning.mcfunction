#setup data
data remove storage dsl:storage root.temp.spawning
data modify storage dsl:storage root.temp.spawning set value {distance:10,range:30,height:10,cap:30}

# mob pool
execute store result score $rng dsl.dummy run random value 1..10
tellraw @p {"score":{"name": "$rng","objective": "dsl.dummy"}}
#-----
# faun
execute if score $rng dsl.dummy matches 1..5 run data modify storage dsl:storage root.temp.spawning.id set value "faun"
execute if score $rng dsl.dummy matches 1..5 store result storage dsl:storage root.temp.spawning.amount int 1 run random value 1..3
# cloudchime
execute if score $rng dsl.dummy matches 6..10 run data modify storage dsl:storage root.temp.spawning.id set value "cloudchime"
execute if score $rng dsl.dummy matches 6..10 store result storage dsl:storage root.temp.spawning.amount int 1 run random value 2..4

#-----
function dsl:entity/natural_spawning/times with storage dsl:storage root.temp.spawning