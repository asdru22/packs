schedule function cgn:technical/timers/tick 1t replace

execute as @a at @s run function cgn:entity/player/timers/tick
execute as @e[type=#cgn:affected/tick,tag=cgn.tick] at @s run function cgn:technical/timers/entity_tick
execute as @e[type=#cgn:needs_processing,tag=!cgn.processed] at @s run function cgn:technical/timers/unprocessed_entity