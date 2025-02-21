scoreboard players add $mob_cap srn.dummy 1
$spreadplayers ~ ~ $(distance) $(range) under $(y) false @s
#
execute unless data storage srn:storage root.temp.spawn.biome run function srn:entity/natural_spawning/biome/no_check with storage srn:storage root.temp.spawn
execute if data storage srn:storage root.temp.spawn.biome run function srn:entity/natural_spawning/biome/check with storage srn:storage root.temp.spawn
#
kill @s