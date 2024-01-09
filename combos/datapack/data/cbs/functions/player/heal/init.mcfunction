execute store result score $max cbs.dummy run attribute @s generic.max_health get 10
execute store result score $current cbs.dummy run data get entity @s Health 10
scoreboard players operation $max cbs.dummy -= $current cbs.dummy
data remove storage cbs:storage root.temp.heal
$execute store result storage cbs:storage root.temp.heal.amount double 0.1 run scoreboard players remove $max cbs.dummy $(amount)
function cbs:player/heal/apply with storage cbs:storage root.temp.heal

effect give @s instant_health 1 24 true

tag @s add cbs.schedule.remove_attribute
schedule function cbs:player/heal/schedule 2t replace
