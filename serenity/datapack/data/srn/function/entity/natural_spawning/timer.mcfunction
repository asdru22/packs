execute store result score $mob_cap srn.dummy if entity @e[tag=srn.natural_spawn]
execute as @a at @s run function srn:entity/natural_spawning/as_player
execute store result storage srn:storage root.temp.seconds int 1 run random value 35..70
function srn:entity/natural_spawning/schedule with storage srn:storage root.temp