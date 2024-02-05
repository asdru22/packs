execute as @a[scores={dsl.third_eye_duration=1..}] at @s run function dsl:entity/player/third_eye/mob_spawning

execute store result storage dsl:storage root.temp.rand.int int 1 run random value 35..60
function dsl:technical/mob_spawning/schedule with storage dsl:storage root.temp.rand