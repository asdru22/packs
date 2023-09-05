$execute store result $times aar.int run random value $(amount_min)..$(amount_max)

execute if data storage aar:storage root.temp.spawning.biome run function aar:entity/natural_spawning/biome_condition with storage aar:storage root.temp.spawning

execute unless data storage aar:storage root.temp.spawning.biome run function aar:entity/natural_spawning/no_biome_condition with storage aar:storage root.temp.spawning