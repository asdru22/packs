scoreboard players set #effect cgn.dummy 2
scoreboard players set #loop cgn.dummy 10
$execute rotated ~$(yaw) ~$(pitch) run function cgn:item/chargeable_armor/lightning/init

execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -90..90
scoreboard players remove #iter cgn.dummy 1
execute if score #iter cgn.dummy matches 1.. run function cgn:item/chargeable_armor/struck_by_lightning/effect with storage cgn:storage root.temp.rng