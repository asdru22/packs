execute on passengers run kill

execute if entity @s[tag=cgn.potted] run function cgn:block/wispthorn/place_potted
execute if entity @s[tag=!cgn.potted] run function cgn:block/wispthorn/place

particle minecraft:soul ~ ~ ~ 0.3 0.3 0.3 0.01 10
kill @s