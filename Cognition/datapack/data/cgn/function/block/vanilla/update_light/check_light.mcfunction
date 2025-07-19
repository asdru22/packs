# Functions to update light levels for a custom block

execute unless entity @s[scores={cgn.dummy=1..}] if predicate cgn:location_check/light/0 run scoreboard players set #temp_0 cgn.dummy 0
execute unless entity @s[scores={cgn.dummy=2..}] if predicate cgn:location_check/light/1 run scoreboard players set #temp_0 cgn.dummy 1
execute unless entity @s[scores={cgn.dummy=3..}] if predicate cgn:location_check/light/2 run scoreboard players set #temp_0 cgn.dummy 2
execute unless entity @s[scores={cgn.dummy=4..}] if predicate cgn:location_check/light/3 run scoreboard players set #temp_0 cgn.dummy 3
execute unless entity @s[scores={cgn.dummy=5..}] if predicate cgn:location_check/light/4 run scoreboard players set #temp_0 cgn.dummy 4
execute unless entity @s[scores={cgn.dummy=6..}] if predicate cgn:location_check/light/5 run scoreboard players set #temp_0 cgn.dummy 5
execute unless entity @s[scores={cgn.dummy=7..}] if predicate cgn:location_check/light/6 run scoreboard players set #temp_0 cgn.dummy 6
execute unless entity @s[scores={cgn.dummy=8..}] if predicate cgn:location_check/light/7 run scoreboard players set #temp_0 cgn.dummy 7
execute unless entity @s[scores={cgn.dummy=9..}] if predicate cgn:location_check/light/8 run scoreboard players set #temp_0 cgn.dummy 8
execute unless entity @s[scores={cgn.dummy=10..}] if predicate cgn:location_check/light/9 run scoreboard players set #temp_0 cgn.dummy 9
execute unless entity @s[scores={cgn.dummy=11..}] if predicate cgn:location_check/light/10 run scoreboard players set #temp_0 cgn.dummy 10
execute unless entity @s[scores={cgn.dummy=12..}] if predicate cgn:location_check/light/11 run scoreboard players set #temp_0 cgn.dummy 11
execute unless entity @s[scores={cgn.dummy=13..}] if predicate cgn:location_check/light/12 run scoreboard players set #temp_0 cgn.dummy 12
execute unless entity @s[scores={cgn.dummy=14..}] if predicate cgn:location_check/light/13 run scoreboard players set #temp_0 cgn.dummy 13
execute unless entity @s[scores={cgn.dummy=15..}] if predicate cgn:location_check/light/14 run scoreboard players set #temp_0 cgn.dummy 14
execute if predicate cgn:location_check/light/15 run scoreboard players set #temp_0 cgn.dummy 15