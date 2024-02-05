execute if block ~ ~ ~ suspicious_gravel align xyz positioned ~.5 ~.5 ~.5 run function dsl:block/suspicious_particle/hit

execute unless score $hit dsl.dummy matches 1 if entity @s[distance=..7] positioned ^ ^ ^0.1 run function dsl:block/suspicious_particle/raycast