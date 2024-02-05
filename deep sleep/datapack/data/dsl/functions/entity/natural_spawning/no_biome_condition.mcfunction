# get height as int
execute store result score $y dsl.dummy run data get entity @s Pos[1] 
$execute store result storage dsl:storage root.temp.spawning.y int 1 run scoreboard players add $y dsl.dummy $(height)
# random pos

$execute if score #custom_mob_cap dsl.dummy matches ..$(cap) summon marker run function dsl:entity/natural_spawning/marker with storage dsl:storage root.temp.spawning

scoreboard players remove $times dsl.dummy 1
execute if score $times dsl.dummy matches 1.. run function dsl:entity/natural_spawning/no_biome_condition with storage dsl:storage root.temp.spawning