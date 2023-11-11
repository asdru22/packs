scoreboard players set #iter cgn.dummy 6
execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -90..90

function cgn:item/chargeable_armor/struck_by_lightning/effect with storage cgn:storage root.temp.rng

particle minecraft:flash ~ ~1 ~