execute as @a at @s run function asd:player/second
execute as @e[type=#asd:affected,tag=asd.entity,tag=asd.1second] run function asd:entity/second
function reg:technical/1s
schedule function asd:technical/timers/1second 1s replace