execute as @a at @s run function cbs:technical/timers/player_second
execute as @e[type=#cbs:affected/second,tag=cbs.second] at @s run function cbs:technical/timers/entity_second
schedule function cbs:technical/timers/second 1s replace