scoreboard players set d.1 asd.d 60
scoreboard players set .hit asd.d 1
function asd:item/magic/item/light_stave/cast
scoreboard players set d.1 asd.d 60
scoreboard players set .hit asd.d 1
execute rotated ~-5 ~ run function asd:item/magic/item/light_stave/aux_cast
scoreboard players set d.1 asd.d 60
scoreboard players set .hit asd.d 1
execute rotated ~5 ~ run function asd:item/magic/item/light_stave/aux_cast