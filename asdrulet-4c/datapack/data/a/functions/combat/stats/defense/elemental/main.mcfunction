execute store result storage a:data root.temp.amount long 10000 run scoreboard players get $e_damage_recieved var

#tellraw @p {"nbt":"root.temp.amount","storage": "a:data"}
execute if entity @s[tag=element.stasis] run function a:combat/stats/defense/elemental/stasis
execute if entity @s[tag=element.vortex] run function a:combat/stats/defense/elemental/vortex
execute if entity @s[tag=element.chaos] run function a:combat/stats/defense/elemental/chaos
execute if entity @s[tag=element.rupture] run function a:combat/stats/defense/elemental/rupture

#tellraw @p {"score":{"name": "$e_damage_recieved","objective": "var"}}