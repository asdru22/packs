schedule function srn:technical/timers/second 1s replace

execute as @e[type=#srn:affected/second,tag=srn.second] at @s run function srn:technical/timers/entity_second
execute as @a at @s run function srn:entity/player/timers/second

