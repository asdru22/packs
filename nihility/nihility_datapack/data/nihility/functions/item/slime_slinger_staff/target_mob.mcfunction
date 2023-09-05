scoreboard players set mob_cast nihility.data 1

scoreboard players set distance nihility.data 30
execute if entity @e[type=#nihility:void_base,tag=nihility.void_spawn,distance=..15] facing entity @e[type=#nihility:void_base,tag=nihility.void_spawn,distance=..15,limit=1,sort=nearest] eyes run function nihility:item/slime_slinger_staff/mob_cast