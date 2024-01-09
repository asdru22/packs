execute if entity @s[tag=cbs.interaction] run function cbs:player/clicks/interaction/tick
execute if entity @s[type=arrow] run function cbs:projectiles/arrow/tick
execute if entity @s[type=marker,tag=cbs.arrow_rain] run function cbs:items/bow/arrow_rain/tick
execute if entity @s[type=marker,tag=cbs.thunder] run function cbs:items/thundering_staff/thunder/tick