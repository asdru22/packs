## 4
execute store result storage a:data root.temp.amount long 1 run scoreboard players get $damage var
$execute store result storage a:data root.temp.amount int 0.000001 run data get storage a:data root.temp.amount $(elemental_damage)
execute store result score $damage var run data get storage a:data root.temp.amount

# elemental damage
scoreboard players operation $e_damage_recieved var = $damage var
execute if entity @s[tag=!element.none] run function a:combat/stats/defense/elemental/main with storage a:data root.hit

scoreboard players operation @s stat.health.current -= $e_damage_recieved var
execute if score $e_damage_recieved var matches 1.. run function a:combat/entity/hurt/elemental_display with storage a:data root.hit
