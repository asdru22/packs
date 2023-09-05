data modify storage mach:storage root.temp.arrow.UUID set from entity @s UUID
execute anchored eyes positioned ^ ^ ^0.2 run function mach:item/spring_loaded_crossbow/use/summon_projectile

execute positioned 0.0 0 0.0 positioned ^ ^ ^2 as 00000016-0000-0042-0000-001600000042 run function mach:item/spring_loaded_crossbow/use/get_motion

execute as @e[type=#mach:projectiles,tag=mach.setup,sort=nearest,limit=1] run function mach:item/spring_loaded_crossbow/use/projectile_setup