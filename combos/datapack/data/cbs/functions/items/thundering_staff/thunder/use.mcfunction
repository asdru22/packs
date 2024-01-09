scoreboard players set $dist cbs.dummy 150
tag @s add cbs.me
data modify storage cbs:storage root.temp.uuid set from entity @s
execute anchored eyes positioned ^ ^ ^ run function cbs:items/thundering_staff/thunder/cast
tag @s remove cbs.me

function cbs:display/effects/charge/expire