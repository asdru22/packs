# Makes a raycast function

execute if block ^ ^ ^0.01 minecraft:brewing_stand positioned ^ ^ ^0.01 align xyz run return run function cgn:block/vanilla/brewing_stand/marker_spawning/spawn
scoreboard players remove @s cgn.dummy 1
execute if score @s cgn.dummy matches 1.. positioned ^ ^ ^0.01 run function cgn:block/vanilla/brewing_stand/marker_spawning/raycast