# random pos
$execute if score $mob_cap srn.dummy matches ..$(cap) summon marker run function srn:entity/natural_spawning/biome/main with storage srn:storage root.temp.spawn

# remove 1
scoreboard players remove #times srn.dummy 1
execute if score #times srn.dummy matches 1.. run function srn:entity/natural_spawning/iterate with storage srn:storage root.temp.spawn