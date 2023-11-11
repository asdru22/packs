scoreboard players operation @s atr.xp.current += #temp_xp atr.int
execute if score @s atr.xp.current >= @s atr.xp.max run function atr:player/levelling/get_xp/level_up


function atr:player/levelling/xp_bar/update