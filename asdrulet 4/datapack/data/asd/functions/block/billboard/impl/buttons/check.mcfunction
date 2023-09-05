execute as @e[type=slime,tag=asd.button] run data merge entity @s {Glowing:0b}
execute unless score billboard.open_display asd.d matches 1 run function asd:block/billboard/impl/buttons/move
execute if score billboard.open_display asd.d matches 1 run function asd:block/billboard/impl/buttons/close_display