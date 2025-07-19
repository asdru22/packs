scoreboard players add @s cgn.dummy 1
execute if entity @s[scores={cgn.dummy=100..}] run kill

execute positioned ~ ~0.1 ~ unless block ~ ~ ~ #cgn:full_collision run tp @s ~ ~ ~
execute if block ~ ~0.1 ~ furnace{CustomName:'{"translate":"block.cgn.guster.name","font":"cgn:technical"}'} run function cgn:entity/steam/hit_guster