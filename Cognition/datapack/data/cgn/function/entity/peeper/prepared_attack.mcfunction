scoreboard players reset @s cgn.dummy2
tag @s remove cgn.attacking
execute if entity @s[tag=cgn.has_line_of_sight] run function cgn:entity/peeper/has_line_of_sight
