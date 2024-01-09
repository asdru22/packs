xp set @s 0 points
xp set @s 129 levels

data remove storage cbs:storage root.temp.xp

scoreboard players operation $temp cbs.dummy = @s cbs.stamina
scoreboard players operation $temp cbs.dummy *= #1000 cbs.dummy
execute store result storage cbs:storage root.temp.xp.current int 1 run scoreboard players operation $temp cbs.dummy /= @s cbs.stat.max_stamina

execute store result storage cbs:storage root.temp.xp.level int 1 run scoreboard players get @s cbs.stamina

function cbs:player/stamina/set_xp_bar with storage cbs:storage root.temp.xp