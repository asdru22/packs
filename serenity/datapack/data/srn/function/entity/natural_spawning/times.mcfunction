$execute store result score #times srn.dummy run random value $(count_min)..$(count_max)
# get height as int
execute store result score #y srn.dummy run data get entity @s Pos[1]
$execute store result storage srn:storage root.temp.spawn.y int 1 run scoreboard players add #y srn.dummy $(height)

function srn:entity/natural_spawning/iterate with storage srn:storage root.temp.spawn