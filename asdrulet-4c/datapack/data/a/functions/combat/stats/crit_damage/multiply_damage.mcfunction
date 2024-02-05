$execute store result storage a:data root.temp.damage long $(crit_damage) run scoreboard players get $damage var
execute store result score $crit_damage var run data get storage a:data root.temp.damage 0.001
scoreboard players operation $damage var += $crit_damage var