xp set @s 0 points
xp set @s 129 levels

data remove storage atr:storage root.temp.xp

scoreboard players operation #temp atr.int = @s atr.xp.current
scoreboard players operation #temp atr.int *= #1000 atr.int
execute store result storage atr:storage root.temp.xp.current int 1 run scoreboard players operation #temp atr.int /= @s atr.xp.max

execute store result storage atr:storage root.temp.xp.level int 1 run scoreboard players get @s atr.xp.level

function atr:player/levelling/xp_bar/set_xp_bar with storage atr:storage root.temp.xp