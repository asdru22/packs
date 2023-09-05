execute store result score $moon_cycle aar.int run time query day
scoreboard players operation $moon_cycle aar.int %= #8 aar.int
execute as @a at @s run function aar:entity/player/10_seconds

schedule function aar:technical/10_seconds 10s replace 