# left -> 1
# right -> 2
data remove storage cbs:storage root.temp.param 
execute if entity @s[advancements={cbs:technical/interaction={attack=true}}] run data modify storage cbs:storage root.temp.param.new set value 1
execute if entity @s[advancements={cbs:technical/interaction={interact=true}}] run data modify storage cbs:storage root.temp.param.new set value 2

execute if score @s cbs.clicks matches 1.. store result storage cbs:storage root.temp.param.old int 1 run scoreboard players get @s cbs.clicks
execute if score @s cbs.clicks matches 1.. run function cbs:player/clicks/next_number with storage cbs:storage root.temp.param

execute unless score @s cbs.clicks matches -2147483648..2147483647 store result score @s cbs.clicks run data get storage cbs:storage root.temp.param.new

function cbs:player/clicks/tellraw/init

data remove storage cbs:storage root.temp.item
data modify storage cbs:storage root.temp.item set from entity @s SelectedItem.tag.cbs
function cbs:items/main with storage cbs:storage root.temp.item

scoreboard players set @s cbs.combo_timer 15

# 3 clicks max
execute if score @s cbs.clicks matches 1000.. run function cbs:player/clicks/timer/reset

advancement revoke @s only cbs:technical/interaction