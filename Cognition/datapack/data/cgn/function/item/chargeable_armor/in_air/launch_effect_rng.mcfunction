data remove storage cgn:macro root
execute store result storage cgn:macro root.yaw int 1 run random value -180..180
execute store result storage cgn:macro root.pitch int 1 run random value -90..90
execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/in_air/launch_lightning with storage cgn:macro root