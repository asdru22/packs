scoreboard players reset @s nihility.dmg_dealt
execute if predicate nihility:entity/player/leave_void run execute in minecraft:overworld run tp @s ~ 300 ~

scoreboard players reset @s[tag=!nihility.is_dashing,tag=!nihility.can_dash] nihility.dash_timer