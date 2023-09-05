function nihility:entity/player/walk_detection/walking

execute if score @s nihility.dash_timer matches -2147483648..2147483647 run function nihility:entity/player/dash/tick

execute if entity @s[tag=nihility.can_dash] run function nihility:entity/player/dash/init

advancement revoke @s only nihility:technical/player/use_shield