scoreboard players operation $n cbs.dummy = $temp cbs.dummy
scoreboard players operation $n cbs.dummy %= #10 cbs.dummy
scoreboard players operation $temp cbs.dummy /= #10 cbs.dummy

execute if score $n cbs.dummy matches 1 run data modify storage cbs:storage root.temp.clicks insert 0 value "L"
execute if score $n cbs.dummy matches 2 run data modify storage cbs:storage root.temp.clicks insert 0 value "R"

execute if score $temp cbs.dummy matches 1.. run function cbs:player/clicks/tellraw/iter