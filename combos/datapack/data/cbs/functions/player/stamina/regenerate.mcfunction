scoreboard players reset @s cbs.stamina_timer
scoreboard players operation $temp cbs.dummy = @s cbs.stamina
scoreboard players operation $temp cbs.dummy *= #5 cbs.dummy
scoreboard players operation $temp cbs.dummy /= #100 cbs.dummy
scoreboard players operation $temp2 cbs.dummy = @s cbs.stat.max_stamina
scoreboard players operation $temp2 cbs.dummy /= #10 cbs.dummy
scoreboard players operation $temp cbs.dummy += $temp2 cbs.dummy
scoreboard players operation @s cbs.stamina += $temp cbs.dummy
execute if score @s cbs.stamina >= @s cbs.stat.max_stamina run scoreboard players operation @s cbs.stamina = @s cbs.stat.max_stamina
function cbs:player/stamina/update