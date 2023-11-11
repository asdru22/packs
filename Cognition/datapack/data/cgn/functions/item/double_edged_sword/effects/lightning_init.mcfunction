execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -90..90

function cgn:item/double_edged_sword/effects/lightning_particle with storage cgn:storage root.temp.rng
