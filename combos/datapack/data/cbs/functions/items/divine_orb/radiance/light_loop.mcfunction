execute unless entity @s[distance=..0.15] positioned ^ ^ ^0.1 run function cbs:items/divine_orb/radiance/light_loop

execute if score #effect cbs.dummy matches 1 run function cbs:items/divine_orb/radiance/effects
execute if score #effect cbs.dummy matches 2 run function cbs:items/divine_orb/diffuse/effects
execute if score #effect cbs.dummy matches 3 run function cbs:items/divine_orb/focus/effects 