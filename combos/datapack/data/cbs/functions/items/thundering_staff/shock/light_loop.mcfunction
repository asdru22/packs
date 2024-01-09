execute unless entity @s[distance=..0.15] positioned ^ ^ ^0.1 run function cbs:items/thundering_staff/shock/light_loop

execute if score #effect cbs.dummy matches 1 run function cbs:items/thundering_staff/shock/effects
execute if score #effect cbs.dummy matches 2 run function cbs:items/thundering_staff/thunder/effects