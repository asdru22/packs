scoreboard players add @s asd.xp.level 1
scoreboard players operation @s asd.xp.current -= @s asd.xp.max
#new max xp calculations
scoreboard players operation d.0 asd.xp.max = @s asd.xp.max
scoreboard players operation d.0 asd.xp.max *= const.25 asd.d
scoreboard players operation d.0 asd.xp.max /= const.10 asd.d
scoreboard players operation d.0 asd.d = @s asd.xp.level
scoreboard players operation d.0 asd.d *= const.10 asd.d
scoreboard players operation d.0 asd.xp.max += d.0 asd.d
scoreboard players operation @s asd.xp.max = d.0 asd.xp.max
#new if xp >= max_xp, level up again
function asd:player/events/levelling/effects
execute if score @s asd.xp.current >= @s asd.xp.max run function asd:player/events/levelling/levelup

function asd:player/events/levelling/xp_bar/second