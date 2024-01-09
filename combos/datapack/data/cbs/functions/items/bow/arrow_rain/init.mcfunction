scoreboard players set $dist cbs.dummy 100
tag @s add cbs.me
data modify storage cbs:storage root.temp.uuid set from entity @s
execute anchored eyes positioned ^ ^ ^ run function cbs:items/bow/arrow_rain/cast 
tag @s remove cbs.me