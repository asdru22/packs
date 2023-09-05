# get height as int
execute store result score $y aar.int run data get entity @s Pos[1] 
$execute store result storage aar:storage root.temp.spawning.y int 1 run scoreboard players add $y aar.int $(height)
# random pos

$execute if score #custom_mob_cap aar.int matches ..$(cap) summon marker run function aar:entity/natural_spawning/marker with storage aar:storage root.temp.spawning

scoreboard players remove $times aar.int 1
execute if score $times aar.int matches 1.. run function aar:entity/natural_spawning/no_biome_condition with storage aar:storage root.temp.spawning