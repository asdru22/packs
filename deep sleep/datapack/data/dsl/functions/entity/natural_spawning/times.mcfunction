$scoreboard players set $times dsl.dummy $(amount)

function dsl:entity/natural_spawning/biome_condition with storage dsl:storage root.temp.spawning

execute unless data storage dsl:storage root.temp.spawning.biome run function dsl:entity/natural_spawning/no_biome_condition with storage dsl:storage root.temp.spawning