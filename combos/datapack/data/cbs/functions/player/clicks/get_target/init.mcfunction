tag @s add cbs.me
scoreboard players operation $dist cbs.dummy = @s cbs.stat.range
execute anchored eyes positioned ^ ^ ^ run function cbs:player/clicks/get_target/cast
tag @s remove cbs.me