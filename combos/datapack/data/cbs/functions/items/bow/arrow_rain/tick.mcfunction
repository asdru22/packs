scoreboard players add @s cbs.dummy 1
data modify storage cbs:storage root.temp.arrow_rain.uuid set from entity @s data.uuid
execute store result storage cbs:storage root.temp.arrow_rain.x double 0.1 run random value -10..10
execute store result storage cbs:storage root.temp.arrow_rain.z double 0.1 run random value -10..10
execute positioned ~ ~10 ~ run function cbs:items/bow/arrow_rain/arrow_setup with storage cbs:storage root.temp.arrow_rain
kill @s[scores={cbs.dummy=20..}]