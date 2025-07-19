execute if score #effect cgn.dummy matches 1 run particle electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000001 0
execute if score #effect cgn.dummy matches 2 run particle end_rod
execute if score #effect cgn.dummy matches 3 run particle minecraft:electric_spark
execute if score #effect cgn.dummy matches 4 run particle electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000001 0 force
execute if score #effect cgn.dummy matches 5 run particle scrape ~ ~ ~ ^ ^ ^1000000 0.0000001 0 force
execute unless entity @s[distance=..0.15] positioned ^ ^ ^0.1 run function cgn:particle/lightning/light_loop