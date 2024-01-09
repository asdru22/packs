scoreboard players set $dist cbs.dummy 200
tag @s add cbs.me
execute if block ~ ~ ~ water anchored eyes positioned ^ ^ ^ run function cbs:items/divine_orb/refraction/cast
tag @s remove cbs.me

execute unless block ~ ~ ~ water run scoreboard players add @s cbs.stamina 700